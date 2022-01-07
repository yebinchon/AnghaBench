
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int32_t ;
struct agp_ati_softc {int ag_entries; int* ag_vdir; int * ag_virtual; void* ag_pdir; } ;
typedef int device_t ;


 int AGP_APBASE ;
 int AGP_GET_APERTURE (int ) ;
 int AGP_PAGE_SHIFT ;
 int AGP_PAGE_SIZE ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VM_MEMATTR_WRITE_COMBINING ;
 scalar_t__ bootverbose ;
 struct agp_ati_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ kmem_alloc_attr (int,int,int ,int ,int ) ;
 int kmem_free (int,int) ;
 int pci_read_config (int ,int ,int) ;
 void* vtophys (int) ;

__attribute__((used)) static int
agp_ati_alloc_gatt(device_t dev)
{
 struct agp_ati_softc *sc = device_get_softc(dev);
 u_int32_t apsize = AGP_GET_APERTURE(dev);
 u_int32_t entries = apsize >> AGP_PAGE_SHIFT;
 u_int32_t apbase_offset;
 int i;


 sc->ag_entries = entries;
 sc->ag_virtual = (void *)kmem_alloc_attr(entries * sizeof(u_int32_t),
     M_NOWAIT | M_ZERO, 0, ~0, VM_MEMATTR_WRITE_COMBINING);
 if (sc->ag_virtual == ((void*)0)) {
  if (bootverbose)
   device_printf(dev, "GATT allocation failed\n");
  return ENOMEM;
 }


 sc->ag_vdir = (void *)kmem_alloc_attr(AGP_PAGE_SIZE, M_NOWAIT | M_ZERO,
     0, ~0, VM_MEMATTR_WRITE_COMBINING);
 if (sc->ag_vdir == ((void*)0)) {
  if (bootverbose)
   device_printf(dev, "pagedir allocation failed\n");
  kmem_free((vm_offset_t)sc->ag_virtual, entries *
      sizeof(u_int32_t));
  return ENOMEM;
 }
 sc->ag_pdir = vtophys((vm_offset_t)sc->ag_vdir);

 apbase_offset = pci_read_config(dev, AGP_APBASE, 4) >> 22;

 for (i = 0; i < sc->ag_entries / 1024; i++) {
  vm_offset_t va;
  vm_offset_t pa;

  va = ((vm_offset_t)sc->ag_virtual) + i * AGP_PAGE_SIZE;
  pa = vtophys(va);
  sc->ag_vdir[apbase_offset + i] = pa | 1;
 }

 return 0;
}

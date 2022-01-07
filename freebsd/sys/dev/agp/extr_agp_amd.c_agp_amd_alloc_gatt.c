
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_long ;
typedef int u_int32_t ;
struct agp_amd_gatt {int ag_entries; int* ag_vdir; void* ag_virtual; void* ag_physical; void* ag_pdir; } ;
typedef int device_t ;


 int AGP_AMD751_APBASE ;
 int AGP_GET_APERTURE (int ) ;
 int AGP_PAGE_SHIFT ;
 int AGP_PAGE_SIZE ;
 int M_AGP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VM_MEMATTR_WRITE_COMBINING ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int free (struct agp_amd_gatt*,int ) ;
 scalar_t__ kmem_alloc_attr (int,int,int ,int ,int ) ;
 int kmem_free (int,int) ;
 struct agp_amd_gatt* malloc (int,int ,int) ;
 int pci_read_config (int ,int ,int) ;
 void* vtophys (int) ;

__attribute__((used)) static struct agp_amd_gatt *
agp_amd_alloc_gatt(device_t dev)
{
 u_int32_t apsize = AGP_GET_APERTURE(dev);
 u_int32_t entries = apsize >> AGP_PAGE_SHIFT;
 struct agp_amd_gatt *gatt;
 int i, npages, pdir_offset;

 if (bootverbose)
  device_printf(dev,
         "allocating GATT for aperture of size %dM\n",
         apsize / (1024*1024));

 gatt = malloc(sizeof(struct agp_amd_gatt), M_AGP, M_NOWAIT);
 if (!gatt)
  return 0;







 gatt->ag_entries = entries;
 gatt->ag_virtual = (void *)kmem_alloc_attr(entries * sizeof(u_int32_t),
     M_NOWAIT | M_ZERO, 0, ~0, VM_MEMATTR_WRITE_COMBINING);
 if (!gatt->ag_virtual) {
  if (bootverbose)
   device_printf(dev, "allocation failed\n");
  free(gatt, M_AGP);
  return 0;
 }




 gatt->ag_vdir = (void *)kmem_alloc_attr(AGP_PAGE_SIZE, M_NOWAIT |
     M_ZERO, 0, ~0, VM_MEMATTR_WRITE_COMBINING);
 if (!gatt->ag_vdir) {
  if (bootverbose)
   device_printf(dev,
          "failed to allocate page directory\n");
  kmem_free((vm_offset_t)gatt->ag_virtual, entries *
      sizeof(u_int32_t));
  free(gatt, M_AGP);
  return 0;
 }

 gatt->ag_pdir = vtophys((vm_offset_t) gatt->ag_vdir);
 if(bootverbose)
  device_printf(dev, "gatt -> ag_pdir %#lx\n",
      (u_long)gatt->ag_pdir);



 gatt->ag_entries = entries;
 if(bootverbose)
  device_printf(dev, "allocating GATT for %d AGP page entries\n",
   gatt->ag_entries);

 gatt->ag_physical = vtophys((vm_offset_t) gatt->ag_virtual);
 pdir_offset = pci_read_config(dev, AGP_AMD751_APBASE, 4) >> 22;

 npages = ((entries * sizeof(u_int32_t) + AGP_PAGE_SIZE - 1)
    >> AGP_PAGE_SHIFT);

 for (i = 0; i < npages; i++) {
  vm_offset_t va;
  vm_offset_t pa;

  va = ((vm_offset_t) gatt->ag_virtual) + i * AGP_PAGE_SIZE;
  pa = vtophys(va);
  gatt->ag_vdir[i + pdir_offset] = pa | 1;
 }

 return gatt;
}

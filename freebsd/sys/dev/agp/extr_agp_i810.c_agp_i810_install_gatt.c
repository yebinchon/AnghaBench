
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct agp_i810_softc {int dcache_size; TYPE_1__* gatt; int * sc_res; } ;
typedef int device_t ;
struct TYPE_2__ {int ag_physical; int * ag_virtual; } ;


 int AGP_I810_DRT ;
 int AGP_I810_DRT_POPULATED ;
 int AGP_I810_PGTBL_CTL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int VM_MEMATTR_WRITE_COMBINING ;
 scalar_t__ bootverbose ;
 int bus_read_1 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ kmem_alloc_contig (int,int,int ,int ,int ,int ,int ) ;
 int vtophys (int ) ;

__attribute__((used)) static int
agp_i810_install_gatt(device_t dev)
{
 struct agp_i810_softc *sc;

 sc = device_get_softc(dev);


 if ((bus_read_1(sc->sc_res[0], AGP_I810_DRT) & AGP_I810_DRT_POPULATED)
     != 0)
  sc->dcache_size = 4 * 1024 * 1024;
 else
  sc->dcache_size = 0;


 sc->gatt->ag_virtual = (void *)kmem_alloc_contig(64 * 1024, M_NOWAIT |
     M_ZERO, 0, ~0, PAGE_SIZE, 0, VM_MEMATTR_WRITE_COMBINING);
 if (sc->gatt->ag_virtual == ((void*)0)) {
  if (bootverbose)
   device_printf(dev, "contiguous allocation failed\n");
  return (ENOMEM);
 }

 sc->gatt->ag_physical = vtophys((vm_offset_t)sc->gatt->ag_virtual);

 bus_write_4(sc->sc_res[0], AGP_I810_PGTBL_CTL,
     sc->gatt->ag_physical | 1);
 return (0);
}

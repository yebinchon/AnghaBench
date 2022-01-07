
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
typedef size_t u_int ;
struct agp_i810_softc {TYPE_2__* match; } ;
typedef int device_t ;
struct TYPE_8__ {scalar_t__ valid; scalar_t__ ref_count; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {int (* read_gtt_pte ) (int ,size_t) ;int (* install_gtt_pte ) (int ,size_t,int ,size_t) ;} ;


 int MPASS (int) ;
 scalar_t__ VM_PAGE_BITS_ALL ;
 int VM_PAGE_TO_PHYS (TYPE_3__*) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int stub1 (int ,size_t,int ,size_t) ;
 int stub2 (int ,size_t) ;

void
agp_intel_gtt_insert_pages(device_t dev, u_int first_entry, u_int num_entries,
    vm_page_t *pages, u_int flags)
{
 struct agp_i810_softc *sc;
 u_int i;

 sc = device_get_softc(dev);
 for (i = 0; i < num_entries; i++) {
  MPASS(pages[i]->valid == VM_PAGE_BITS_ALL);
  MPASS(pages[i]->ref_count > 0);
  sc->match->driver->install_gtt_pte(dev, first_entry + i,
      VM_PAGE_TO_PHYS(pages[i]), flags);
 }
 sc->match->driver->read_gtt_pte(dev, first_entry + num_entries - 1);
}

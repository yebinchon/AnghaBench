
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef scalar_t__ u_int ;
struct sglist {scalar_t__ sg_nseg; TYPE_1__* sg_segs; } ;
struct agp_i810_softc {TYPE_3__* match; } ;
typedef int device_t ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {int (* read_gtt_pte ) (int ,scalar_t__) ;int (* install_gtt_pte ) (int ,scalar_t__,int ,scalar_t__) ;} ;
struct TYPE_4__ {size_t ss_len; int ss_paddr; } ;


 scalar_t__ AGP_PAGE_SIZE ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int stub1 (int ,scalar_t__,int ,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;

void
agp_intel_gtt_insert_sg_entries(device_t dev, struct sglist *sg_list,
    u_int first_entry, u_int flags)
{
 struct agp_i810_softc *sc;
 vm_paddr_t spaddr;
 size_t slen;
 u_int i, j;

 sc = device_get_softc(dev);
 for (i = j = 0; j < sg_list->sg_nseg; j++) {
  spaddr = sg_list->sg_segs[i].ss_paddr;
  slen = sg_list->sg_segs[i].ss_len;
  for (; slen > 0; i++) {
   sc->match->driver->install_gtt_pte(dev, first_entry + i,
       spaddr, flags);
   spaddr += AGP_PAGE_SIZE;
   slen -= AGP_PAGE_SIZE;
  }
 }
 sc->match->driver->read_gtt_pte(dev, first_entry + i - 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {struct netmap_kring** tx_rings; } ;
struct netmap_vp_adapter {TYPE_1__ up; } ;
struct netmap_kring {size_t ring_id; int (* nm_sync ) (struct netmap_kring*,int) ;scalar_t__ nr_hwtail; scalar_t__ rcur; scalar_t__ rtail; scalar_t__ rhead; int name; scalar_t__ nr_hwcur; struct netmap_adapter* na; } ;
struct netmap_bwrap_adapter {struct netmap_vp_adapter up; } ;
struct netmap_adapter {int name; struct netmap_bwrap_adapter* na_private; } ;


 int EIO ;
 int NM_DEBUG_RXINTR ;
 int NM_IRQ_COMPLETED ;
 int NM_IRQ_RESCHED ;
 int netmap_debug ;
 scalar_t__ netmap_verbose ;
 int nm_kr_put (struct netmap_kring*) ;
 scalar_t__ nm_kr_tryget (struct netmap_kring*,int ,int *) ;
 int nm_prinf (char*,int ,scalar_t__,int,...) ;
 int nm_prlim (int,char*,int ) ;
 int stub1 (struct netmap_kring*,int) ;
 int stub2 (struct netmap_kring*,int) ;
 int stub3 (struct netmap_kring*,int) ;

__attribute__((used)) static int
netmap_bwrap_intr_notify(struct netmap_kring *kring, int flags)
{
 struct netmap_adapter *na = kring->na;
 struct netmap_bwrap_adapter *bna = na->na_private;
 struct netmap_kring *bkring;
 struct netmap_vp_adapter *vpna = &bna->up;
 u_int ring_nr = kring->ring_id;
 int ret = NM_IRQ_COMPLETED;
 int error;

 if (netmap_debug & NM_DEBUG_RXINTR)
     nm_prinf("%s %s 0x%x", na->name, kring->name, flags);

 bkring = vpna->up.tx_rings[ring_nr];


 if (nm_kr_tryget(kring, 0 , ((void*)0))) {
  return EIO;
 }

 if (netmap_debug & NM_DEBUG_RXINTR)
     nm_prinf("%s head %d cur %d tail %d", na->name,
  kring->rhead, kring->rcur, kring->rtail);




 error = kring->nm_sync(kring, 0);
 if (error)
  goto put_out;
 if (kring->nr_hwcur == kring->nr_hwtail) {
  if (netmap_verbose)
   nm_prlim(1, "interrupt with no packets on %s",
    kring->name);
  goto put_out;
 }





 bkring->rhead = bkring->rcur = kring->nr_hwtail;

 bkring->nm_sync(bkring, flags);


 kring->rhead = kring->rcur = kring->rtail = kring->nr_hwtail;

 error = kring->nm_sync(kring, 0);



 if (kring->rcur != kring->nr_hwtail) {
  ret = NM_IRQ_RESCHED;
 }
put_out:
 nm_kr_put(kring);

 return error ? error : ret;
}

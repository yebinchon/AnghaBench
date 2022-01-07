
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct netmap_kring {size_t ring_id; size_t nkr_num_slots; char* name; int (* nm_sync ) (struct netmap_kring*,int) ;int rtail; int nr_hwtail; int nr_hwcur; int rcur; int rhead; int nkr_hwlease; struct netmap_adapter* na; } ;
struct netmap_bwrap_adapter {struct netmap_adapter* hwna; } ;
struct netmap_adapter {char* name; struct netmap_kring** tx_rings; struct netmap_bwrap_adapter* na_private; } ;


 int ENXIO ;
 int NM_IRQ_COMPLETED ;
 int netmap_vp_rxsync (struct netmap_kring*,int) ;
 int nm_kr_put (struct netmap_kring*) ;
 scalar_t__ nm_kr_tryget (struct netmap_kring*,int ,int *) ;
 int nm_next (int ,size_t) ;
 int nm_prdis (char*,char*,...) ;
 int stub1 (struct netmap_kring*,int) ;

int
netmap_bwrap_notify(struct netmap_kring *kring, int flags)
{
 struct netmap_adapter *na = kring->na;
 struct netmap_bwrap_adapter *bna = na->na_private;
 struct netmap_adapter *hwna = bna->hwna;
 u_int ring_n = kring->ring_id;
 u_int lim = kring->nkr_num_slots - 1;
 struct netmap_kring *hw_kring;
 int error;

 nm_prdis("%s: na %s hwna %s",
   (kring ? kring->name : "NULL!"),
   (na ? na->name : "NULL!"),
   (hwna ? hwna->name : "NULL!"));
 hw_kring = hwna->tx_rings[ring_n];

 if (nm_kr_tryget(hw_kring, 0, ((void*)0))) {
  return ENXIO;
 }


 netmap_vp_rxsync(kring, flags);
 nm_prdis("%s[%d] PRE rx(c%3d t%3d l%3d) ring(h%3d c%3d t%3d) tx(c%3d ht%3d t%3d)",
  na->name, ring_n,
  kring->nr_hwcur, kring->nr_hwtail, kring->nkr_hwlease,
  kring->rhead, kring->rcur, kring->rtail,
  hw_kring->nr_hwcur, hw_kring->nr_hwtail, hw_kring->rtail);



 hw_kring->rhead = hw_kring->rcur = kring->nr_hwtail;
 error = hw_kring->nm_sync(hw_kring, flags);
 if (error)
  goto put_out;



 kring->rhead = kring->rcur = nm_next(hw_kring->nr_hwtail, lim);


 netmap_vp_rxsync(kring, flags);
 nm_prdis("%s[%d] PST rx(c%3d t%3d l%3d) ring(h%3d c%3d t%3d) tx(c%3d ht%3d t%3d)",
  na->name, ring_n,
  kring->nr_hwcur, kring->nr_hwtail, kring->nkr_hwlease,
  kring->rhead, kring->rcur, kring->rtail,
  hw_kring->nr_hwcur, hw_kring->nr_hwtail, hw_kring->rtail);
put_out:
 nm_kr_put(hw_kring);

 return error ? error : NM_IRQ_COMPLETED;
}

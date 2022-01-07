
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rhead; scalar_t__ nr_hwcur; scalar_t__ nr_hwtail; struct netmap_adapter* na; } ;
struct netmap_adapter {int ifp; } ;
struct mbq {int dummy; } ;


 int mbq_init (struct mbq*) ;
 int mbq_len (struct mbq*) ;
 int netmap_grab_packets (struct netmap_kring*,struct mbq*,int) ;
 int netmap_send_up (int ,struct mbq*) ;
 int nm_prdis (char*,int ) ;

__attribute__((used)) static int
netmap_txsync_to_host(struct netmap_kring *kring, int flags)
{
 struct netmap_adapter *na = kring->na;
 u_int const lim = kring->nkr_num_slots - 1;
 u_int const head = kring->rhead;
 struct mbq q;




 mbq_init(&q);
 netmap_grab_packets(kring, &q, 1 );
 nm_prdis("have %d pkts in queue", mbq_len(&q));
 kring->nr_hwcur = head;
 kring->nr_hwtail = head + lim;
 if (kring->nr_hwtail > lim)
  kring->nr_hwtail -= lim + 1;

 netmap_send_up(na->ifp, &q);
 return 0;
}

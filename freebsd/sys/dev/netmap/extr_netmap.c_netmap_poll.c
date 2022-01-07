
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct netmap_ring {scalar_t__ cur; scalar_t__ tail; scalar_t__ head; } ;
struct netmap_priv_d {int np_sync_flags; int np_csb_atok_base; size_t* np_qfirst; size_t* np_qlast; scalar_t__ np_txpoll; int ** np_si; struct netmap_adapter* np_na; int * np_nifp; } ;
struct netmap_kring {scalar_t__ rhead; scalar_t__ nr_hwcur; scalar_t__ nkr_num_slots; scalar_t__ rcur; scalar_t__ rtail; int nr_kflags; int (* nm_notify ) (struct netmap_kring*,int ) ;scalar_t__ (* nm_sync ) (struct netmap_kring*,int) ;struct netmap_ring* ring; } ;
struct netmap_adapter {int ifp; struct netmap_kring** rx_rings; struct netmap_kring** tx_rings; int name; } ;
struct mbq {int dummy; } ;
typedef enum txrx { ____Placeholder_txrx } txrx ;
typedef int NM_SELRECORD_T ;
typedef int NM_SELINFO_T ;


 struct netmap_kring** NMR (struct netmap_adapter*,int const) ;
 int NM_DEBUG_ON ;
 int NR_FORWARD ;
 size_t NR_RX ;
 size_t NR_TX ;
 int NR_TXRX ;
 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int mb () ;
 int mbq_init (struct mbq*) ;
 scalar_t__ mbq_peek (struct mbq*) ;
 int netmap_debug ;
 int netmap_fwd ;
 int netmap_grab_packets (struct netmap_kring*,struct mbq*,int ) ;
 int netmap_ring_reinit (struct netmap_kring*) ;
 int netmap_send_up (int ,struct mbq*) ;
 int nm_kr_put (struct netmap_kring*) ;
 int nm_kr_tryget (struct netmap_kring*,int,size_t*) ;
 scalar_t__ nm_may_forward_up (struct netmap_kring*) ;
 int nm_netmap_on (struct netmap_adapter*) ;
 int nm_os_selrecord (int *,int *) ;
 int nm_prerr (char*) ;
 int nm_prinf (char*,int ,int) ;
 scalar_t__ nm_rxsync_prologue (struct netmap_kring*,struct netmap_ring*) ;
 int nm_sync_finalize (struct netmap_kring*) ;
 scalar_t__ nm_txsync_prologue (struct netmap_kring*,struct netmap_ring*) ;
 int ring_timestamp_set (struct netmap_ring*) ;
 scalar_t__ stub1 (struct netmap_kring*,int) ;
 int stub2 (struct netmap_kring*,int ) ;
 scalar_t__ stub3 (struct netmap_kring*,int) ;
 int stub4 (struct netmap_kring*,int ) ;
 scalar_t__ unlikely (int) ;
 int want_rx ;
 int want_tx ;

int
netmap_poll(struct netmap_priv_d *priv, int events, NM_SELRECORD_T *sr)
{
 struct netmap_adapter *na;
 struct netmap_kring *kring;
 struct netmap_ring *ring;
 u_int i, want[NR_TXRX], revents = 0;
 NM_SELINFO_T *si[NR_TXRX];


 struct mbq q;






 int retry_tx = 1, retry_rx = 1;







 int send_down = 0;
 int sync_flags = priv->np_sync_flags;

 mbq_init(&q);

 if (unlikely(priv->np_nifp == ((void*)0))) {
  return POLLERR;
 }
 mb();

 na = priv->np_na;

 if (unlikely(!nm_netmap_on(na)))
  return POLLERR;

 if (unlikely(priv->np_csb_atok_base)) {
  nm_prerr("Invalid poll in CSB mode");
  return POLLERR;
 }

 if (netmap_debug & NM_DEBUG_ON)
  nm_prinf("device %s events 0x%x", na->name, events);
 want[NR_TX] = events & (POLLOUT | POLLWRNORM);
 want[NR_RX] = events & (POLLIN | POLLRDNORM);
 si[NR_RX] = priv->np_si[NR_RX];
 si[NR_TX] = priv->np_si[NR_TX];
 nm_os_selrecord(sr, si[NR_RX]);
 nm_os_selrecord(sr, si[NR_TX]);
 if (priv->np_txpoll || want[NR_TX]) {






flush_tx:
  for (i = priv->np_qfirst[NR_TX]; i < priv->np_qlast[NR_TX]; i++) {
   int found = 0;

   kring = na->tx_rings[i];
   ring = kring->ring;







   if (!send_down && !want[NR_TX] && ring->head == kring->nr_hwcur)
    continue;

   if (nm_kr_tryget(kring, 1, &revents))
    continue;

   if (nm_txsync_prologue(kring, ring) >= kring->nkr_num_slots) {
    netmap_ring_reinit(kring);
    revents |= POLLERR;
   } else {
    if (kring->nm_sync(kring, sync_flags))
     revents |= POLLERR;
    else
     nm_sync_finalize(kring);
   }







   found = kring->rcur != kring->rtail;
   nm_kr_put(kring);
   if (found) {
    revents |= want[NR_TX];
    want[NR_TX] = 0;



   }
  }

  send_down = 0;
  if (want[NR_TX] && retry_tx && sr) {



   retry_tx = 0;
   goto flush_tx;
  }
 }





 if (want[NR_RX]) {

do_retry_rx:
  for (i = priv->np_qfirst[NR_RX]; i < priv->np_qlast[NR_RX]; i++) {
   int found = 0;

   kring = na->rx_rings[i];
   ring = kring->ring;

   if (unlikely(nm_kr_tryget(kring, 1, &revents)))
    continue;

   if (nm_rxsync_prologue(kring, ring) >= kring->nkr_num_slots) {
    netmap_ring_reinit(kring);
    revents |= POLLERR;
   }






   if (nm_may_forward_up(kring)) {
    netmap_grab_packets(kring, &q, netmap_fwd);
   }




   kring->nr_kflags &= ~NR_FORWARD;
   if (kring->nm_sync(kring, sync_flags))
    revents |= POLLERR;
   else
    nm_sync_finalize(kring);
   send_down |= (kring->nr_kflags & NR_FORWARD);
   ring_timestamp_set(ring);
   found = kring->rcur != kring->rtail;
   nm_kr_put(kring);
   if (found) {
    revents |= want[NR_RX];
    retry_rx = 0;



   }
  }






  if (send_down || retry_rx) {
   retry_rx = 0;
   if (send_down)
    goto flush_tx;
   else
    goto do_retry_rx;
  }
 }







 if (mbq_peek(&q)) {
  netmap_send_up(na->ifp, &q);
 }

 return (revents);


}

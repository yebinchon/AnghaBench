
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_slot {int dummy; } ;
struct netmap_kring {scalar_t__ nr_pending_mode; int nr_hwcur; int nr_hwtail; int nkr_num_slots; int nkr_hwofs; TYPE_1__* ring; int (* nm_notify ) (struct netmap_kring*,int ) ;scalar_t__ nr_mode; } ;
struct netmap_adapter {size_t num_tx_rings; size_t num_rx_rings; int name; struct netmap_kring** rx_rings; struct netmap_kring** tx_rings; } ;
typedef enum txrx { ____Placeholder_txrx } txrx ;
struct TYPE_2__ {struct netmap_slot* slot; } ;


 scalar_t__ NKR_NETMAP_OFF ;
 scalar_t__ NKR_NETMAP_ON ;
 int NM_DEBUG_ON ;
 int NR_TX ;
 int netmap_debug ;
 int nm_native_on (struct netmap_adapter*) ;
 int nm_prdis (char*) ;
 int nm_prinf (char*,int ,char*,size_t,int,int,int,int) ;
 int stub1 (struct netmap_kring*,int ) ;

struct netmap_slot *
netmap_reset(struct netmap_adapter *na, enum txrx tx, u_int n,
 u_int new_cur)
{
 struct netmap_kring *kring;
 int new_hwofs, lim;

 if (!nm_native_on(na)) {
  nm_prdis("interface not in native netmap mode");
  return ((void*)0);
 }
 if (tx == NR_TX) {
  if (n >= na->num_tx_rings)
   return ((void*)0);

  kring = na->tx_rings[n];

  if (kring->nr_pending_mode == NKR_NETMAP_OFF) {
   kring->nr_mode = NKR_NETMAP_OFF;
   return ((void*)0);
  }


  new_hwofs = kring->nr_hwcur - new_cur;
 } else {
  if (n >= na->num_rx_rings)
   return ((void*)0);
  kring = na->rx_rings[n];

  if (kring->nr_pending_mode == NKR_NETMAP_OFF) {
   kring->nr_mode = NKR_NETMAP_OFF;
   return ((void*)0);
  }

  new_hwofs = kring->nr_hwtail - new_cur;
 }
 lim = kring->nkr_num_slots - 1;
 if (new_hwofs > lim)
  new_hwofs -= lim + 1;


 if (netmap_debug & NM_DEBUG_ON)
     nm_prinf("%s %s%d hwofs %d -> %d, hwtail %d -> %d",
  na->name,
  tx == NR_TX ? "TX" : "RX", n,
  kring->nkr_hwofs, new_hwofs,
  kring->nr_hwtail,
  tx == NR_TX ? lim : kring->nr_hwtail);
 kring->nkr_hwofs = new_hwofs;
 if (tx == NR_TX) {
  kring->nr_hwtail = kring->nr_hwcur + lim;
  if (kring->nr_hwtail > lim)
   kring->nr_hwtail -= lim + 1;
 }






 kring->nr_mode = NKR_NETMAP_ON;
 kring->nm_notify(kring, 0);
 return kring->ring->slot;
}

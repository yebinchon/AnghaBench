
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct mbq {int dummy; } ;
struct netmap_kring {scalar_t__ nr_mode; int nr_hwtail; int nr_hwcur; int nkr_num_slots; int (* nm_notify ) (struct netmap_kring*,int ) ;struct mbq rx_queue; } ;
struct netmap_adapter {size_t num_host_rx_rings; unsigned int num_tx_rings; int name; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 size_t ENOBUFS ;
 size_t ENXIO ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 size_t MBUF_LEN (struct mbuf*) ;
 int MBUF_TRANSMIT (struct netmap_adapter*,struct ifnet*,struct mbuf*) ;
 void* MBUF_TXQ (struct mbuf*) ;
 struct netmap_adapter* NA (struct ifnet*) ;
 size_t NETMAP_BUF_SIZE (struct netmap_adapter*) ;
 scalar_t__ NKR_NETMAP_OFF ;
 struct netmap_kring** NMR (struct netmap_adapter*,int ) ;
 int NR_RX ;
 int NR_TX ;
 int m_freem (struct mbuf*) ;
 int mbq_enqueue (struct mbq*,struct mbuf*) ;
 int mbq_len (struct mbq*) ;
 int mbq_lock (struct mbq*) ;
 int mbq_unlock (struct mbq*) ;
 int netmap_generic_hwcsum ;
 int nm_netmap_on (struct netmap_adapter*) ;
 scalar_t__ nm_os_mbuf_has_csum_offld (struct mbuf*) ;
 scalar_t__ nm_os_mbuf_has_seg_offld (struct mbuf*) ;
 int nm_prdis (int,char*,int ,int) ;
 int nm_prerr (char*,int ,...) ;
 int nm_prlim (int,char*,int ,...) ;
 size_t nma_get_nrings (struct netmap_adapter*,int ) ;
 int stub1 (struct netmap_kring*,int ) ;

int
netmap_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct netmap_adapter *na = NA(ifp);
 struct netmap_kring *kring, *tx_kring;
 u_int len = MBUF_LEN(m);
 u_int error = ENOBUFS;
 unsigned int txr;
 struct mbq *q;
 int busy;
 u_int i;

 i = MBUF_TXQ(m);
 if (i >= na->num_host_rx_rings) {
  i = i % na->num_host_rx_rings;
 }
 kring = NMR(na, NR_RX)[nma_get_nrings(na, NR_RX) + i];





 if (!nm_netmap_on(na)) {
  nm_prerr("%s not in netmap mode anymore", na->name);
  error = ENXIO;
  goto done;
 }

 txr = MBUF_TXQ(m);
 if (txr >= na->num_tx_rings) {
  txr %= na->num_tx_rings;
 }
 tx_kring = NMR(na, NR_TX)[txr];

 if (tx_kring->nr_mode == NKR_NETMAP_OFF) {
  return MBUF_TRANSMIT(na, ifp, m);
 }

 q = &kring->rx_queue;


 if (len > NETMAP_BUF_SIZE(na)) {
  nm_prerr("%s from_host, drop packet size %d > %d", na->name,
   len, NETMAP_BUF_SIZE(na));
  goto done;
 }

 if (!netmap_generic_hwcsum) {
  if (nm_os_mbuf_has_csum_offld(m)) {
   nm_prlim(1, "%s drop mbuf that needs checksum offload", na->name);
   goto done;
  }
 }

 if (nm_os_mbuf_has_seg_offld(m)) {
  nm_prlim(1, "%s drop mbuf that needs generic segmentation offload", na->name);
  goto done;
 }
 mbq_lock(q);

 busy = kring->nr_hwtail - kring->nr_hwcur;
 if (busy < 0)
  busy += kring->nkr_num_slots;
 if (busy + mbq_len(q) >= kring->nkr_num_slots - 1) {
  nm_prlim(2, "%s full hwcur %d hwtail %d qlen %d", na->name,
   kring->nr_hwcur, kring->nr_hwtail, mbq_len(q));
 } else {
  mbq_enqueue(q, m);
  nm_prdis(2, "%s %d bufs in queue", na->name, mbq_len(q));

  m = ((void*)0);
  error = 0;
 }
 mbq_unlock(q);

done:
 if (m)
  m_freem(m);

 kring->nm_notify(kring, 0);





 return (error);
}

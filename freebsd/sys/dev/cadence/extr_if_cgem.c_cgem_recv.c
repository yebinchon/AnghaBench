
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int len; int csum_flags; int csum_data; int rcvif; } ;
struct mbuf {int m_len; struct mbuf* m_next; TYPE_2__ m_pkthdr; int m_data; } ;
struct cgem_softc {scalar_t__ rxring_queued; size_t rxring_tl_ptr; int ** rxring_m_dmamap; int mbuf_dma_tag; struct mbuf** rxring_m; TYPE_1__* rxring; int ifp; } ;
typedef int if_t ;
struct TYPE_3__ {int addr; int ctl; } ;


 int BUS_DMASYNC_POSTREAD ;
 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_LOCK (struct cgem_softc*) ;
 size_t CGEM_NUM_RX_DESCS ;
 int CGEM_RXDESC_BAD_FCS ;
 int CGEM_RXDESC_CKSUM_STAT_IP_GOOD ;
 int CGEM_RXDESC_CKSUM_STAT_MASK ;
 int CGEM_RXDESC_CKSUM_STAT_TCP_GOOD ;
 int CGEM_RXDESC_CKSUM_STAT_UDP_GOOD ;
 int CGEM_RXDESC_EOF ;
 int CGEM_RXDESC_LENGTH_MASK ;
 int CGEM_RXDESC_OWN ;
 int CGEM_RXDESC_SOF ;
 int CGEM_UNLOCK (struct cgem_softc*) ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 scalar_t__ ETHER_ALIGN ;
 int IFCAP_RXCSUM ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int bus_dmamap_unload (int ,int *) ;
 int cgem_fill_rqueue (struct cgem_softc*) ;
 int if_getcapenable (int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_input (int ,struct mbuf*) ;
 int m_free (struct mbuf*) ;

__attribute__((used)) static void
cgem_recv(struct cgem_softc *sc)
{
 if_t ifp = sc->ifp;
 struct mbuf *m, *m_hd, **m_tl;
 uint32_t ctl;

 CGEM_ASSERT_LOCKED(sc);


 m_hd = ((void*)0);
 m_tl = &m_hd;
 while (sc->rxring_queued > 0 &&
        (sc->rxring[sc->rxring_tl_ptr].addr & CGEM_RXDESC_OWN) != 0) {

  ctl = sc->rxring[sc->rxring_tl_ptr].ctl;


  m = sc->rxring_m[sc->rxring_tl_ptr];
  sc->rxring_m[sc->rxring_tl_ptr] = ((void*)0);


  bus_dmamap_sync(sc->mbuf_dma_tag,
    sc->rxring_m_dmamap[sc->rxring_tl_ptr],
    BUS_DMASYNC_POSTREAD);


  bus_dmamap_unload(sc->mbuf_dma_tag,
     sc->rxring_m_dmamap[sc->rxring_tl_ptr]);
  bus_dmamap_destroy(sc->mbuf_dma_tag,
       sc->rxring_m_dmamap[sc->rxring_tl_ptr]);
  sc->rxring_m_dmamap[sc->rxring_tl_ptr] = ((void*)0);


  if (++sc->rxring_tl_ptr == CGEM_NUM_RX_DESCS)
   sc->rxring_tl_ptr = 0;
  sc->rxring_queued--;





  if ((ctl & CGEM_RXDESC_BAD_FCS) != 0 ||
      (ctl & (CGEM_RXDESC_SOF | CGEM_RXDESC_EOF)) !=
             (CGEM_RXDESC_SOF | CGEM_RXDESC_EOF)) {

   m_free(m);
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   continue;
  }


  m->m_data += ETHER_ALIGN;
  m->m_len = (ctl & CGEM_RXDESC_LENGTH_MASK);
  m->m_pkthdr.rcvif = ifp;
  m->m_pkthdr.len = m->m_len;




  if ((if_getcapenable(ifp) & IFCAP_RXCSUM) != 0) {

   if ((ctl & CGEM_RXDESC_CKSUM_STAT_MASK) ==
       CGEM_RXDESC_CKSUM_STAT_TCP_GOOD ||
       (ctl & CGEM_RXDESC_CKSUM_STAT_MASK) ==
       CGEM_RXDESC_CKSUM_STAT_UDP_GOOD) {
    m->m_pkthdr.csum_flags |=
     CSUM_IP_CHECKED | CSUM_IP_VALID |
     CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
    m->m_pkthdr.csum_data = 0xffff;
   } else if ((ctl & CGEM_RXDESC_CKSUM_STAT_MASK) ==
       CGEM_RXDESC_CKSUM_STAT_IP_GOOD) {

    m->m_pkthdr.csum_flags |=
     CSUM_IP_CHECKED | CSUM_IP_VALID;
    m->m_pkthdr.csum_data = 0xffff;
   }
  }


  *m_tl = m;
  m_tl = &m->m_next;
 }


 cgem_fill_rqueue(sc);


 CGEM_UNLOCK(sc);
 while (m_hd != ((void*)0)) {
  m = m_hd;
  m_hd = m_hd->m_next;
  m->m_next = ((void*)0);
  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  if_input(ifp, m);
 }
 CGEM_LOCK(sc);
}

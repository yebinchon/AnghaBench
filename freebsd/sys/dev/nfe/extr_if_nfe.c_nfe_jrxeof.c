
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {size_t jcur; int jrx_desc_map; int jrx_desc_tag; struct nfe_desc32* jdesc32; struct nfe_desc64* jdesc64; struct nfe_rx_data* jdata; } ;
struct nfe_softc {int nfe_flags; TYPE_2__ jrxq; int nfe_ifp; } ;
struct nfe_rx_data {struct mbuf* m; } ;
struct nfe_desc64 {int length; int flags; int * physaddr; } ;
struct nfe_desc32 {int length; int flags; } ;
struct TYPE_3__ {int ether_vtag; int len; int csum_flags; int csum_data; int rcvif; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; int m_flags; } ;
typedef int if_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int EAGAIN ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_IQDROPS ;
 int M_VLANTAG ;
 int NFE_40BIT_ADDR ;
 int NFE_INC (size_t,int ) ;
 int NFE_JUMBO_RX_RING_COUNT ;
 int NFE_JUMBO_SUP ;
 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int NFE_RX_ERROR ;
 int NFE_RX_FIXME_V1 ;
 int NFE_RX_FIXME_V2 ;
 int NFE_RX_IP_CSUMOK ;
 int NFE_RX_LEN_MASK ;
 int NFE_RX_READY ;
 int NFE_RX_TCP_CSUMOK ;
 int NFE_RX_UDP_CSUMOK ;
 int NFE_RX_VALID_V1 ;
 int NFE_RX_VALID_V2 ;
 int NFE_RX_VTAG ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_getcapenable (int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_input (int ,struct mbuf*) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int nfe_discard_jrxbuf (struct nfe_softc*,size_t) ;
 scalar_t__ nfe_jnewbuf (struct nfe_softc*,size_t) ;

__attribute__((used)) static int
nfe_jrxeof(struct nfe_softc *sc, int count, int *rx_npktsp)
{
 if_t ifp = sc->nfe_ifp;
 struct nfe_desc32 *desc32;
 struct nfe_desc64 *desc64;
 struct nfe_rx_data *data;
 struct mbuf *m;
 uint16_t flags;
 int len, prog, rx_npkts;
 uint32_t vtag = 0;

 rx_npkts = 0;
 NFE_LOCK_ASSERT(sc);

 bus_dmamap_sync(sc->jrxq.jrx_desc_tag, sc->jrxq.jrx_desc_map,
     BUS_DMASYNC_POSTREAD);

 for (prog = 0;;NFE_INC(sc->jrxq.jcur, NFE_JUMBO_RX_RING_COUNT),
     vtag = 0) {
  if (count <= 0)
   break;
  count--;

  data = &sc->jrxq.jdata[sc->jrxq.jcur];

  if (sc->nfe_flags & NFE_40BIT_ADDR) {
   desc64 = &sc->jrxq.jdesc64[sc->jrxq.jcur];
   vtag = le32toh(desc64->physaddr[1]);
   flags = le16toh(desc64->flags);
   len = le16toh(desc64->length) & NFE_RX_LEN_MASK;
  } else {
   desc32 = &sc->jrxq.jdesc32[sc->jrxq.jcur];
   flags = le16toh(desc32->flags);
   len = le16toh(desc32->length) & NFE_RX_LEN_MASK;
  }

  if (flags & NFE_RX_READY)
   break;
  prog++;
  if ((sc->nfe_flags & (NFE_JUMBO_SUP | NFE_40BIT_ADDR)) == 0) {
   if (!(flags & NFE_RX_VALID_V1)) {
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
    nfe_discard_jrxbuf(sc, sc->jrxq.jcur);
    continue;
   }
   if ((flags & NFE_RX_FIXME_V1) == NFE_RX_FIXME_V1) {
    flags &= ~NFE_RX_ERROR;
    len--;
   }
  } else {
   if (!(flags & NFE_RX_VALID_V2)) {
    if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
    nfe_discard_jrxbuf(sc, sc->jrxq.jcur);
    continue;
   }

   if ((flags & NFE_RX_FIXME_V2) == NFE_RX_FIXME_V2) {
    flags &= ~NFE_RX_ERROR;
    len--;
   }
  }

  if (flags & NFE_RX_ERROR) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   nfe_discard_jrxbuf(sc, sc->jrxq.jcur);
   continue;
  }

  m = data->m;
  if (nfe_jnewbuf(sc, sc->jrxq.jcur) != 0) {
   if_inc_counter(ifp, IFCOUNTER_IQDROPS, 1);
   nfe_discard_jrxbuf(sc, sc->jrxq.jcur);
   continue;
  }

  if ((vtag & NFE_RX_VTAG) != 0 &&
      (if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
   m->m_pkthdr.ether_vtag = vtag & 0xffff;
   m->m_flags |= M_VLANTAG;
  }

  m->m_pkthdr.len = m->m_len = len;
  m->m_pkthdr.rcvif = ifp;

  if ((if_getcapenable(ifp) & IFCAP_RXCSUM) != 0) {
   if ((flags & NFE_RX_IP_CSUMOK) != 0) {
    m->m_pkthdr.csum_flags |= CSUM_IP_CHECKED;
    m->m_pkthdr.csum_flags |= CSUM_IP_VALID;
    if ((flags & NFE_RX_TCP_CSUMOK) != 0 ||
        (flags & NFE_RX_UDP_CSUMOK) != 0) {
     m->m_pkthdr.csum_flags |=
         CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
     m->m_pkthdr.csum_data = 0xffff;
    }
   }
  }

  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);

  NFE_UNLOCK(sc);
  if_input(ifp, m);
  NFE_LOCK(sc);
  rx_npkts++;
 }

 if (prog > 0)
  bus_dmamap_sync(sc->jrxq.jrx_desc_tag, sc->jrxq.jrx_desc_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 if (rx_npktsp != ((void*)0))
  *rx_npktsp = rx_npkts;
 return (count > 0 ? 0 : EAGAIN);
}

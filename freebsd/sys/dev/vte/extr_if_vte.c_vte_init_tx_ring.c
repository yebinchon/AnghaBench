
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vte_txdesc {struct vte_tx_desc* tx_desc; int * tx_m; } ;
struct vte_tx_desc {int dtnp; } ;
struct TYPE_5__ {int vte_tx_ring_map; int vte_tx_ring_tag; struct vte_tx_desc* vte_tx_ring; scalar_t__ vte_tx_ring_paddr; struct vte_txdesc* vte_txdesc; TYPE_3__** vte_txmbufs; scalar_t__ vte_tx_cnt; scalar_t__ vte_tx_cons; scalar_t__ vte_tx_prod; } ;
struct vte_softc {TYPE_2__ vte_cdata; } ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_4__ {void* len; } ;
struct TYPE_6__ {void* m_len; TYPE_1__ m_pkthdr; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 void* MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int VTE_TX_RING_CNT ;
 int VTE_TX_RING_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (struct vte_tx_desc*,int ) ;
 int htole32 (scalar_t__) ;
 TYPE_3__* m_getcl (int ,int ,int ) ;
 scalar_t__ tx_deep_copy ;

__attribute__((used)) static int
vte_init_tx_ring(struct vte_softc *sc)
{
 struct vte_tx_desc *desc;
 struct vte_txdesc *txd;
 bus_addr_t addr;
 int i;

 VTE_LOCK_ASSERT(sc);

 sc->vte_cdata.vte_tx_prod = 0;
 sc->vte_cdata.vte_tx_cons = 0;
 sc->vte_cdata.vte_tx_cnt = 0;


 if (tx_deep_copy != 0) {
  for (i = 0; i < VTE_TX_RING_CNT; i++) {
   sc->vte_cdata.vte_txmbufs[i] = m_getcl(M_NOWAIT,
       MT_DATA, M_PKTHDR);
   if (sc->vte_cdata.vte_txmbufs[i] == ((void*)0))
    return (ENOBUFS);
   sc->vte_cdata.vte_txmbufs[i]->m_pkthdr.len = MCLBYTES;
   sc->vte_cdata.vte_txmbufs[i]->m_len = MCLBYTES;
  }
 }
 desc = sc->vte_cdata.vte_tx_ring;
 bzero(desc, VTE_TX_RING_SZ);
 for (i = 0; i < VTE_TX_RING_CNT; i++) {
  txd = &sc->vte_cdata.vte_txdesc[i];
  txd->tx_m = ((void*)0);
  if (i != VTE_TX_RING_CNT - 1)
   addr = sc->vte_cdata.vte_tx_ring_paddr +
       sizeof(struct vte_tx_desc) * (i + 1);
  else
   addr = sc->vte_cdata.vte_tx_ring_paddr +
       sizeof(struct vte_tx_desc) * 0;
  desc = &sc->vte_cdata.vte_tx_ring[i];
  desc->dtnp = htole32(addr);
  txd->tx_desc = desc;
 }

 bus_dmamap_sync(sc->vte_cdata.vte_tx_ring_tag,
     sc->vte_cdata.vte_tx_ring_map, BUS_DMASYNC_PREREAD |
     BUS_DMASYNC_PREWRITE);
 return (0);
}

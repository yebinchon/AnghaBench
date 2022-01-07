
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_txdesc {int flags; int data_dmap; int rndis_pkt_dmap; int rndis_pkt; int * m; struct hn_tx_ring* txr; } ;
struct hn_tx_ring {int hn_tx_data_dtag; int hn_tx_rndis_dtag; } ;


 int HN_TXD_FLAG_DMAMAP ;
 int KASSERT (int,char*) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

__attribute__((used)) static void
hn_txdesc_dmamap_destroy(struct hn_txdesc *txd)
{
 struct hn_tx_ring *txr = txd->txr;

 KASSERT(txd->m == ((void*)0), ("still has mbuf installed"));
 KASSERT((txd->flags & HN_TXD_FLAG_DMAMAP) == 0, ("still dma mapped"));

 bus_dmamap_unload(txr->hn_tx_rndis_dtag, txd->rndis_pkt_dmap);
 bus_dmamem_free(txr->hn_tx_rndis_dtag, txd->rndis_pkt,
     txd->rndis_pkt_dmap);
 bus_dmamap_destroy(txr->hn_tx_data_dtag, txd->data_dmap);
}

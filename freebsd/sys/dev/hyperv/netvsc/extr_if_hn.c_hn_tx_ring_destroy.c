
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {int hn_txdesc_cnt; int hn_tx_lock; int hn_txlist_spin; int * hn_mbuf_br; int * hn_txdesc; int * hn_txdesc_br; int * hn_tx_rndis_dtag; int * hn_tx_data_dtag; } ;


 int M_DEVBUF ;
 int buf_ring_free (int *,int ) ;
 int bus_dma_tag_destroy (int *) ;
 int free (int *,int ) ;
 int hn_txdesc_dmamap_destroy (int *) ;
 int hn_txdesc_gc (struct hn_tx_ring*,int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
hn_tx_ring_destroy(struct hn_tx_ring *txr)
{
 int i;

 if (txr->hn_txdesc == ((void*)0))
  return;
 for (i = 0; i < txr->hn_txdesc_cnt; ++i)
  hn_txdesc_gc(txr, &txr->hn_txdesc[i]);
 for (i = 0; i < txr->hn_txdesc_cnt; ++i)
  hn_txdesc_dmamap_destroy(&txr->hn_txdesc[i]);

 if (txr->hn_tx_data_dtag != ((void*)0))
  bus_dma_tag_destroy(txr->hn_tx_data_dtag);
 if (txr->hn_tx_rndis_dtag != ((void*)0))
  bus_dma_tag_destroy(txr->hn_tx_rndis_dtag);





 free(txr->hn_txdesc, M_DEVBUF);
 txr->hn_txdesc = ((void*)0);

 if (txr->hn_mbuf_br != ((void*)0))
  buf_ring_free(txr->hn_mbuf_br, M_DEVBUF);


 mtx_destroy(&txr->hn_txlist_spin);

 mtx_destroy(&txr->hn_tx_lock);
}

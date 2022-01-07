
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {unsigned int rxq_count; int rxq_entries; struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {unsigned int index; int entries; int ptr_mask; int init_state; int refill_callout; void* queue; int buf_base_id; int mem; int refill_threshold; struct sfxge_softc* sc; } ;
struct sfxge_rx_sw_desc {int dummy; } ;
struct sfxge_evq {int dummy; } ;
typedef int efsys_mem_t ;


 int EFX_RXQ_NBUFS (int) ;
 int EFX_RXQ_SIZE (int) ;
 int KASSERT (int,char*) ;
 int M_SFXGE ;
 int M_WAITOK ;
 int M_ZERO ;
 int RX_REFILL_THRESHOLD (int) ;
 int SFXGE_RXQ_INITIALIZED ;
 int callout_init (int *,int) ;
 void* malloc (int,int ,int) ;
 int sfxge_dma_alloc (struct sfxge_softc*,int ,int *) ;
 int sfxge_lro_init (struct sfxge_rxq*) ;
 int sfxge_sram_buf_tbl_alloc (struct sfxge_softc*,int ,int *) ;

__attribute__((used)) static int
sfxge_rx_qinit(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_rxq *rxq;
 struct sfxge_evq *evq;
 efsys_mem_t *esmp;
 int rc;

 KASSERT(index < sc->rxq_count, ("index >= %d", sc->rxq_count));

 rxq = malloc(sizeof(struct sfxge_rxq), M_SFXGE, M_ZERO | M_WAITOK);
 rxq->sc = sc;
 rxq->index = index;
 rxq->entries = sc->rxq_entries;
 rxq->ptr_mask = rxq->entries - 1;
 rxq->refill_threshold = RX_REFILL_THRESHOLD(rxq->entries);

 sc->rxq[index] = rxq;
 esmp = &rxq->mem;

 evq = sc->evq[index];


 if ((rc = sfxge_dma_alloc(sc, EFX_RXQ_SIZE(sc->rxq_entries), esmp)) != 0)
  return (rc);


 sfxge_sram_buf_tbl_alloc(sc, EFX_RXQ_NBUFS(sc->rxq_entries),
     &rxq->buf_base_id);


 rxq->queue = malloc(sizeof(struct sfxge_rx_sw_desc) * sc->rxq_entries,
     M_SFXGE, M_WAITOK | M_ZERO);
 sfxge_lro_init(rxq);

 callout_init(&rxq->refill_callout, 1);

 rxq->init_state = SFXGE_RXQ_INITIALIZED;

 return (0);
}

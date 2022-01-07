
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int txq_entries; struct sfxge_evq** evq; int dev; scalar_t__ rxq_entries; } ;
struct sfxge_evq {unsigned int index; int init_state; int buf_base_id; void* entries; int txq; int * txqs; int mem; struct sfxge_softc* sc; } ;
typedef int efsys_mem_t ;


 int EFX_EVQ_NBUFS (void*) ;
 int EFX_EVQ_SIZE (void*) ;
 int KASSERT (int,char*) ;
 int M_SFXGE ;
 int M_WAITOK ;
 int M_ZERO ;
 void* ROUNDUP_POW_OF_TWO (scalar_t__) ;
 int SFXGE_EVQ_INITIALIZED ;
 int SFXGE_EVQ_LOCK_DESTROY (struct sfxge_evq*) ;
 int SFXGE_EVQ_LOCK_INIT (struct sfxge_evq*,int ,unsigned int) ;
 int SFXGE_EVQ_UNINITIALIZED ;
 unsigned int SFXGE_RX_SCALE_MAX ;
 int device_get_nameunit (int ) ;
 int free (struct sfxge_evq*,int ) ;
 struct sfxge_evq* malloc (int,int ,int) ;
 int sfxge_dma_alloc (struct sfxge_softc*,int ,int *) ;
 int sfxge_dma_free (int *) ;
 int sfxge_evq_stat_init (struct sfxge_evq*) ;
 int sfxge_sram_buf_tbl_alloc (struct sfxge_softc*,int ,int *) ;

__attribute__((used)) static int
sfxge_ev_qinit(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_evq *evq;
 efsys_mem_t *esmp;
 int rc;

 KASSERT(index < SFXGE_RX_SCALE_MAX, ("index >= SFXGE_RX_SCALE_MAX"));

 evq = malloc(sizeof(struct sfxge_evq), M_SFXGE, M_ZERO | M_WAITOK);
 evq->sc = sc;
 evq->index = index;
 sc->evq[index] = evq;
 esmp = &evq->mem;






 if (index == 0)
  evq->entries =
   ROUNDUP_POW_OF_TWO(sc->rxq_entries +
        3 * sc->txq_entries +
        128);
 else
  evq->entries =
   ROUNDUP_POW_OF_TWO(sc->rxq_entries +
        sc->txq_entries +
        128);


 evq->txqs = &evq->txq;


 if ((rc = sfxge_dma_alloc(sc, EFX_EVQ_SIZE(evq->entries), esmp)) != 0)
  return (rc);


 sfxge_sram_buf_tbl_alloc(sc, EFX_EVQ_NBUFS(evq->entries),
     &evq->buf_base_id);

 SFXGE_EVQ_LOCK_INIT(evq, device_get_nameunit(sc->dev), index);

 evq->init_state = SFXGE_EVQ_INITIALIZED;







 return (0);
}

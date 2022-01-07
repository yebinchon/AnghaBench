
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_tx_dpl {int std_put_hiwat; int std_get_hiwat; int std_get_non_tcp_count; int std_get_count; int std_get; int * std_getp; int std_get_non_tcp_max; int std_get_max; int std_put_max; } ;
struct sfxge_txq {int entries; int ptr_mask; int type; unsigned int evq_index; int packet_dma_tag; TYPE_2__* stmp; TYPE_2__* pend_desc; int init_state; struct sfxge_tx_dpl dpl; int buf_base_id; int mem; struct sfxge_softc* sc; } ;
struct sfxge_tx_mapping {int dummy; } ;
struct sfxge_softc {int txq_entries; int dev; struct sysctl_oid* txqs_node; int parent_dma_tag; struct sfxge_evq** evq; struct sfxge_txq** txq; int enp; } ;
struct sfxge_evq {int dummy; } ;
typedef int name ;
typedef enum sfxge_txq_type { ____Placeholder_sfxge_txq_type } sfxge_txq_type ;
struct TYPE_4__ {int enc_tx_dma_desc_size_max; int enc_tx_dma_desc_boundary; } ;
typedef TYPE_1__ efx_nic_cfg_t ;
typedef int efx_desc_t ;
typedef int efsys_mem_t ;
struct TYPE_5__ {int map; } ;


 int BUS_SPACE_MAXADDR ;
 int CTLFLAG_RD ;
 int CTLFLAG_STATS ;
 int EFX_TXQ_NBUFS (int) ;
 int EFX_TXQ_SIZE (int) ;
 int ENOMEM ;
 int MIN (int,int ) ;
 int M_SFXGE ;
 int M_WAITOK ;
 int M_ZERO ;
 int OID_AUTO ;
 int SFXGE_TXQ_INITIALIZED ;
 int SFXGE_TXQ_IP_TCP_UDP_CKSUM ;
 int SFXGE_TXQ_LOCK_INIT (struct sfxge_txq*,int ,unsigned int) ;
 int SFXGE_TX_MAPPING_MAX_SEG ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int device_get_nameunit (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* efx_nic_cfg_get (int ) ;
 int free (TYPE_2__*,int ) ;
 void* malloc (int,int ,int) ;
 int sfxge_dma_alloc (struct sfxge_softc*,int ,int *) ;
 int sfxge_dma_free (int *) ;
 int sfxge_sram_buf_tbl_alloc (struct sfxge_softc*,int ,int *) ;
 int sfxge_tx_dpl_get_max ;
 int sfxge_tx_dpl_get_non_tcp_max ;
 int sfxge_tx_dpl_put_max ;
 int sfxge_txq_stat_init (struct sfxge_txq*,struct sysctl_oid*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int tso_init (struct sfxge_txq*) ;

__attribute__((used)) static int
sfxge_tx_qinit(struct sfxge_softc *sc, unsigned int txq_index,
        enum sfxge_txq_type type, unsigned int evq_index)
{
 const efx_nic_cfg_t *encp = efx_nic_cfg_get(sc->enp);
 char name[16];
 struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(sc->dev);
 struct sysctl_oid *txq_node;
 struct sfxge_txq *txq;
 struct sfxge_evq *evq;
 struct sfxge_tx_dpl *stdp;
 struct sysctl_oid *dpl_node;
 efsys_mem_t *esmp;
 unsigned int nmaps;
 int rc;

 txq = malloc(sizeof(struct sfxge_txq), M_SFXGE, M_ZERO | M_WAITOK);
 txq->sc = sc;
 txq->entries = sc->txq_entries;
 txq->ptr_mask = txq->entries - 1;

 sc->txq[txq_index] = txq;
 esmp = &txq->mem;

 evq = sc->evq[evq_index];


 if ((rc = sfxge_dma_alloc(sc, EFX_TXQ_SIZE(sc->txq_entries), esmp)) != 0)
  return (rc);


 sfxge_sram_buf_tbl_alloc(sc, EFX_TXQ_NBUFS(sc->txq_entries),
     &txq->buf_base_id);


 if (bus_dma_tag_create(sc->parent_dma_tag, 1,
     encp->enc_tx_dma_desc_boundary,
     MIN(0x3FFFFFFFFFFFUL, BUS_SPACE_MAXADDR), BUS_SPACE_MAXADDR, ((void*)0),
     ((void*)0), 0x11000, SFXGE_TX_MAPPING_MAX_SEG,
     encp->enc_tx_dma_desc_size_max, 0, ((void*)0), ((void*)0),
     &txq->packet_dma_tag) != 0) {
  device_printf(sc->dev, "Couldn't allocate txq DMA tag\n");
  rc = ENOMEM;
  goto fail;
 }


 txq->pend_desc = malloc(sizeof(efx_desc_t) * sc->txq_entries,
    M_SFXGE, M_ZERO | M_WAITOK);


 txq->stmp = malloc(sizeof(struct sfxge_tx_mapping) * sc->txq_entries,
     M_SFXGE, M_ZERO | M_WAITOK);
 for (nmaps = 0; nmaps < sc->txq_entries; nmaps++) {
  rc = bus_dmamap_create(txq->packet_dma_tag, 0,
           &txq->stmp[nmaps].map);
  if (rc != 0)
   goto fail2;
 }

 snprintf(name, sizeof(name), "%u", txq_index);
 txq_node = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(sc->txqs_node),
       OID_AUTO, name, CTLFLAG_RD, ((void*)0), "");
 if (txq_node == ((void*)0)) {
  rc = ENOMEM;
  goto fail_txq_node;
 }

 if (type == SFXGE_TXQ_IP_TCP_UDP_CKSUM &&
     (rc = tso_init(txq)) != 0)
  goto fail3;


 stdp = &txq->dpl;
 stdp->std_put_max = sfxge_tx_dpl_put_max;
 stdp->std_get_max = sfxge_tx_dpl_get_max;
 stdp->std_get_non_tcp_max = sfxge_tx_dpl_get_non_tcp_max;
 stdp->std_getp = &stdp->std_get;

 SFXGE_TXQ_LOCK_INIT(txq, device_get_nameunit(sc->dev), txq_index);

 dpl_node = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(txq_node), OID_AUTO,
       "dpl", CTLFLAG_RD, ((void*)0),
       "Deferred packet list statistics");
 if (dpl_node == ((void*)0)) {
  rc = ENOMEM;
  goto fail_dpl_node;
 }

 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(dpl_node), OID_AUTO,
   "get_count", CTLFLAG_RD | CTLFLAG_STATS,
   &stdp->std_get_count, 0, "");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(dpl_node), OID_AUTO,
   "get_non_tcp_count", CTLFLAG_RD | CTLFLAG_STATS,
   &stdp->std_get_non_tcp_count, 0, "");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(dpl_node), OID_AUTO,
   "get_hiwat", CTLFLAG_RD | CTLFLAG_STATS,
   &stdp->std_get_hiwat, 0, "");
 SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(dpl_node), OID_AUTO,
   "put_hiwat", CTLFLAG_RD | CTLFLAG_STATS,
   &stdp->std_put_hiwat, 0, "");

 rc = sfxge_txq_stat_init(txq, txq_node);
 if (rc != 0)
  goto fail_txq_stat_init;

 txq->type = type;
 txq->evq_index = evq_index;
 txq->init_state = SFXGE_TXQ_INITIALIZED;

 return (0);

fail_txq_stat_init:
fail_dpl_node:
fail3:
fail_txq_node:
 free(txq->pend_desc, M_SFXGE);
fail2:
 while (nmaps-- != 0)
  bus_dmamap_destroy(txq->packet_dma_tag, txq->stmp[nmaps].map);
 free(txq->stmp, M_SFXGE);
 bus_dma_tag_destroy(txq->packet_dma_tag);

fail:
 sfxge_dma_free(esmp);

 return (rc);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sfxge_tx_dpl {int /*<<< orphan*/  std_put_hiwat; int /*<<< orphan*/  std_get_hiwat; int /*<<< orphan*/  std_get_non_tcp_count; int /*<<< orphan*/  std_get_count; int /*<<< orphan*/  std_get; int /*<<< orphan*/ * std_getp; int /*<<< orphan*/  std_get_non_tcp_max; int /*<<< orphan*/  std_get_max; int /*<<< orphan*/  std_put_max; } ;
struct sfxge_txq {int entries; int ptr_mask; int type; unsigned int evq_index; int /*<<< orphan*/  packet_dma_tag; TYPE_2__* stmp; TYPE_2__* pend_desc; int /*<<< orphan*/  init_state; struct sfxge_tx_dpl dpl; int /*<<< orphan*/  buf_base_id; int /*<<< orphan*/  mem; struct sfxge_softc* sc; } ;
struct sfxge_tx_mapping {int dummy; } ;
struct sfxge_softc {int txq_entries; int /*<<< orphan*/  dev; struct sysctl_oid* txqs_node; int /*<<< orphan*/  parent_dma_tag; struct sfxge_evq** evq; struct sfxge_txq** txq; int /*<<< orphan*/  enp; } ;
struct sfxge_evq {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  enum sfxge_txq_type { ____Placeholder_sfxge_txq_type } sfxge_txq_type ;
struct TYPE_4__ {int /*<<< orphan*/  enc_tx_dma_desc_size_max; int /*<<< orphan*/  enc_tx_dma_desc_boundary; } ;
typedef  TYPE_1__ efx_nic_cfg_t ;
typedef  int /*<<< orphan*/  efx_desc_t ;
typedef  int /*<<< orphan*/  efsys_mem_t ;
struct TYPE_5__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_STATS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SFXGE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  SFXGE_TXQ_INITIALIZED ; 
 int SFXGE_TXQ_IP_TCP_UDP_CKSUM ; 
 int /*<<< orphan*/  FUNC3 (struct sfxge_txq*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  SFXGE_TX_MAPPING_MAX_SEG ; 
 struct sysctl_oid* FUNC4 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sysctl_oid*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sfxge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sfxge_tx_dpl_get_max ; 
 int /*<<< orphan*/  sfxge_tx_dpl_get_non_tcp_max ; 
 int /*<<< orphan*/  sfxge_tx_dpl_put_max ; 
 int FUNC20 (struct sfxge_txq*,struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,unsigned int) ; 
 int FUNC22 (struct sfxge_txq*) ; 

__attribute__((used)) static int
FUNC23(struct sfxge_softc *sc, unsigned int txq_index,
	       enum sfxge_txq_type type, unsigned int evq_index)
{
	const efx_nic_cfg_t *encp = FUNC14(sc->enp);
	char name[16];
	struct sysctl_ctx_list *ctx = FUNC12(sc->dev);
	struct sysctl_oid *txq_node;
	struct sfxge_txq *txq;
	struct sfxge_evq *evq;
	struct sfxge_tx_dpl *stdp;
	struct sysctl_oid *dpl_node;
	efsys_mem_t *esmp;
	unsigned int nmaps;
	int rc;

	txq = FUNC16(sizeof(struct sfxge_txq), M_SFXGE, M_ZERO | M_WAITOK);
	txq->sc = sc;
	txq->entries = sc->txq_entries;
	txq->ptr_mask = txq->entries - 1;

	sc->txq[txq_index] = txq;
	esmp = &txq->mem;

	evq = sc->evq[evq_index];

	/* Allocate and zero DMA space for the descriptor ring. */
	if ((rc = FUNC17(sc, FUNC1(sc->txq_entries), esmp)) != 0)
		return (rc);

	/* Allocate buffer table entries. */
	FUNC19(sc, FUNC0(sc->txq_entries),
				 &txq->buf_base_id);

	/* Create a DMA tag for packet mappings. */
	if (FUNC7(sc->parent_dma_tag, 1,
	    encp->enc_tx_dma_desc_boundary,
	    FUNC2(0x3FFFFFFFFFFFUL, BUS_SPACE_MAXADDR), BUS_SPACE_MAXADDR, NULL,
	    NULL, 0x11000, SFXGE_TX_MAPPING_MAX_SEG,
	    encp->enc_tx_dma_desc_size_max, 0, NULL, NULL,
	    &txq->packet_dma_tag) != 0) {
		FUNC13(sc->dev, "Couldn't allocate txq DMA tag\n");
		rc = ENOMEM;
		goto fail;
	}

	/* Allocate pending descriptor array for batching writes. */
	txq->pend_desc = FUNC16(sizeof(efx_desc_t) * sc->txq_entries,
				M_SFXGE, M_ZERO | M_WAITOK);

	/* Allocate and initialise mbuf DMA mapping array. */
	txq->stmp = FUNC16(sizeof(struct sfxge_tx_mapping) * sc->txq_entries,
	    M_SFXGE, M_ZERO | M_WAITOK);
	for (nmaps = 0; nmaps < sc->txq_entries; nmaps++) {
		rc = FUNC9(txq->packet_dma_tag, 0,
				       &txq->stmp[nmaps].map);
		if (rc != 0)
			goto fail2;
	}

	FUNC21(name, sizeof(name), "%u", txq_index);
	txq_node = FUNC4(ctx, FUNC6(sc->txqs_node),
				   OID_AUTO, name, CTLFLAG_RD, NULL, "");
	if (txq_node == NULL) {
		rc = ENOMEM;
		goto fail_txq_node;
	}

	if (type == SFXGE_TXQ_IP_TCP_UDP_CKSUM &&
	    (rc = FUNC22(txq)) != 0)
		goto fail3;

	/* Initialize the deferred packet list. */
	stdp = &txq->dpl;
	stdp->std_put_max = sfxge_tx_dpl_put_max;
	stdp->std_get_max = sfxge_tx_dpl_get_max;
	stdp->std_get_non_tcp_max = sfxge_tx_dpl_get_non_tcp_max;
	stdp->std_getp = &stdp->std_get;

	FUNC3(txq, FUNC11(sc->dev), txq_index);

	dpl_node = FUNC4(ctx, FUNC6(txq_node), OID_AUTO,
				   "dpl", CTLFLAG_RD, NULL,
				   "Deferred packet list statistics");
	if (dpl_node == NULL) {
		rc = ENOMEM;
		goto fail_dpl_node;
	}

	FUNC5(ctx, FUNC6(dpl_node), OID_AUTO,
			"get_count", CTLFLAG_RD | CTLFLAG_STATS,
			&stdp->std_get_count, 0, "");
	FUNC5(ctx, FUNC6(dpl_node), OID_AUTO,
			"get_non_tcp_count", CTLFLAG_RD | CTLFLAG_STATS,
			&stdp->std_get_non_tcp_count, 0, "");
	FUNC5(ctx, FUNC6(dpl_node), OID_AUTO,
			"get_hiwat", CTLFLAG_RD | CTLFLAG_STATS,
			&stdp->std_get_hiwat, 0, "");
	FUNC5(ctx, FUNC6(dpl_node), OID_AUTO,
			"put_hiwat", CTLFLAG_RD | CTLFLAG_STATS,
			&stdp->std_put_hiwat, 0, "");

	rc = FUNC20(txq, txq_node);
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
	FUNC15(txq->pend_desc, M_SFXGE);
fail2:
	while (nmaps-- != 0)
		FUNC10(txq->packet_dma_tag, txq->stmp[nmaps].map);
	FUNC15(txq->stmp, M_SFXGE);
	FUNC8(txq->packet_dma_tag);

fail:
	FUNC18(esmp);

	return (rc);
}
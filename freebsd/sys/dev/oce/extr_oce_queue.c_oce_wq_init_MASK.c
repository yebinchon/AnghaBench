#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {int q_len; int nbufs; int nhdl; int /*<<< orphan*/  eqd; scalar_t__ wq_type; } ;
struct oce_wq {int /*<<< orphan*/  br; TYPE_6__ tx_lock; TYPE_6__ tx_compl_lock; int /*<<< orphan*/  ring; TYPE_2__* pckts; int /*<<< orphan*/  tag; void* parent; TYPE_1__ cfg; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  map; } ;
typedef  TYPE_3__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NIC_WQE_SIZE ; 
 int /*<<< orphan*/  OCE_DEFAULT_WQ_EQD ; 
 int /*<<< orphan*/  OCE_MAX_TX_ELEMENTS ; 
 int /*<<< orphan*/  OCE_MAX_TX_SIZE ; 
 int OCE_WQ_PACKET_ARRAY_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 struct oce_wq* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct oce_wq*) ; 

__attribute__((used)) static struct
oce_wq *FUNC9(POCE_SOFTC sc, uint32_t q_len, uint32_t wq_type)
{
	struct oce_wq *wq;
	int rc = 0, i;

	/* q_len must be min 256 and max 2k */
	if (q_len < 256 || q_len > 2048) {
		FUNC5(sc->dev,
			  "Invalid q length. Must be "
			  "[256, 2000]: 0x%x\n", q_len);
		return NULL;
	}

	/* allocate wq */
	wq = FUNC6(sizeof(struct oce_wq), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (!wq)
		return NULL;

	/* Set the wq config */
	wq->cfg.q_len = q_len;
	wq->cfg.wq_type = (uint8_t) wq_type;
	wq->cfg.eqd = OCE_DEFAULT_WQ_EQD;
	wq->cfg.nbufs = 2 * wq->cfg.q_len;
	wq->cfg.nhdl = 2 * wq->cfg.q_len;

	wq->parent = (void *)sc;

	rc = FUNC2(FUNC4(sc->dev),
				1, 0,
				BUS_SPACE_MAXADDR,
				BUS_SPACE_MAXADDR,
				NULL, NULL,
				OCE_MAX_TX_SIZE,
				OCE_MAX_TX_ELEMENTS,
				PAGE_SIZE, 0, NULL, NULL, &wq->tag);

	if (rc)
		goto free_wq;


	for (i = 0; i < OCE_WQ_PACKET_ARRAY_SIZE; i++) {
		rc = FUNC3(wq->tag, 0, &wq->pckts[i].map);
		if (rc) 
			goto free_wq;
	}

	wq->ring = FUNC7(sc, q_len, NIC_WQE_SIZE);
	if (!wq->ring)
		goto free_wq;


	FUNC0(&wq->tx_lock, "TX_lock");
	FUNC0(&wq->tx_compl_lock, "WQ_HANDLER_LOCK");
	
#if __FreeBSD_version >= 800000
	/* Allocate buf ring for multiqueue*/
	wq->br = buf_ring_alloc(4096, M_DEVBUF,
			M_WAITOK, &wq->tx_lock.mutex);
	if (!wq->br)
		goto free_wq;
#endif
	return wq;


free_wq:
	FUNC5(sc->dev, "Create WQ failed\n");
	FUNC8(wq);
	return NULL;
}
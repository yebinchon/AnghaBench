#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int q_len; int frag_size; int mtu; int is_rss_queue; scalar_t__ eqd; } ;
struct oce_rq {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  ring; TYPE_2__* pckts; int /*<<< orphan*/  tag; void* parent; scalar_t__ pending; TYPE_1__ cfg; scalar_t__ lro_pkts_queued; } ;
struct oce_nic_rqe {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  map; } ;
typedef  TYPE_3__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (int) ; 
 int OCE_RQ_PACKET_ARRAY_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct oce_rq* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  oce_rq_buf_size ; 
 int /*<<< orphan*/  FUNC8 (struct oce_rq*) ; 

__attribute__((used)) static struct
oce_rq *FUNC9(POCE_SOFTC sc,
				  uint32_t q_len,
				  uint32_t frag_size,
				  uint32_t mtu, uint32_t rss)
{
	struct oce_rq *rq;
	int rc = 0, i;

	if (FUNC1(frag_size) <= 0)
		return NULL;
	
	if ((q_len == 0) || (q_len > 1024))
		return NULL;

	/* allocate the rq */
	rq = FUNC6(sizeof(struct oce_rq), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (!rq) 
		return NULL;

	
	rq->cfg.q_len = q_len;
	rq->cfg.frag_size = frag_size;
	rq->cfg.mtu = mtu;
	rq->cfg.eqd = 0;
	rq->lro_pkts_queued = 0;
	rq->cfg.is_rss_queue = rss;
        rq->pending = 0;

	rq->parent = (void *)sc;

	rc = FUNC2(FUNC4(sc->dev),
			1, 0,
			BUS_SPACE_MAXADDR,
			BUS_SPACE_MAXADDR,
			NULL, NULL,
			oce_rq_buf_size,
			1, oce_rq_buf_size, 0, NULL, NULL, &rq->tag);
	if (rc)
		goto free_rq;

	for (i = 0; i < OCE_RQ_PACKET_ARRAY_SIZE; i++) {
		rc = FUNC3(rq->tag, 0, &rq->pckts[i].map);
		if (rc)
			goto free_rq;
	}

	/* create the ring buffer */
	rq->ring = FUNC7(sc, q_len,
				 sizeof(struct oce_nic_rqe));
	if (!rq->ring)
		goto free_rq;

	FUNC0(&rq->rx_lock, "RX_lock");

	return rq;

free_rq:
	FUNC5(sc->dev, "Create RQ failed\n");
	FUNC8(rq);
	return NULL;
}
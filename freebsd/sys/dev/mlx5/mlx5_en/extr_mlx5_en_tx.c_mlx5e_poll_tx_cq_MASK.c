#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_8__ {int /*<<< orphan*/  wq; } ;
struct TYPE_6__ {int /*<<< orphan*/  nop; } ;
struct TYPE_5__ {scalar_t__ sz_m1; } ;
struct mlx5e_sq {scalar_t__ cc; scalar_t__ cev_factor; TYPE_4__ cq; TYPE_3__* mbuf; int /*<<< orphan*/  dma_tag; TYPE_2__ stats; TYPE_1__ wq; } ;
struct mlx5_cqe64 {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_7__ {scalar_t__ num_bytes; scalar_t__ num_wqebbs; int /*<<< orphan*/  dma_map; struct mbuf* mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx5_cqe64* FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC7(struct mlx5e_sq *sq, int budget)
{
	u16 sqcc;

	/*
	 * sq->cc must be updated only after mlx5_cqwq_update_db_record(),
	 * otherwise a cq overrun may occur
	 */
	sqcc = sq->cc;

	while (budget > 0) {
		struct mlx5_cqe64 *cqe;
		struct mbuf *mb;
		u16 x;
		u16 ci;

		cqe = FUNC6(&sq->cq);
		if (!cqe)
			break;

		FUNC4(&sq->cq.wq);

		/* update budget according to the event factor */
		budget -= sq->cev_factor;

		for (x = 0; x != sq->cev_factor; x++) {
			ci = sqcc & sq->wq.sz_m1;
			mb = sq->mbuf[ci].mbuf;
			sq->mbuf[ci].mbuf = NULL;

			if (mb == NULL) {
				if (sq->mbuf[ci].num_bytes == 0) {
					/* NOP */
					sq->stats.nop++;
				}
			} else {
				FUNC1(sq->dma_tag, sq->mbuf[ci].dma_map,
				    BUS_DMASYNC_POSTWRITE);
				FUNC2(sq->dma_tag, sq->mbuf[ci].dma_map);

				/* Free transmitted mbuf */
				FUNC3(mb);
			}
			sqcc += sq->mbuf[ci].num_wqebbs;
		}
	}

	FUNC5(&sq->cq.wq);

	/* Ensure cq space is freed before enabling more cqes */
	FUNC0();

	sq->cc = sqcc;
}
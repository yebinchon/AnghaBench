#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ctx; } ;
struct mlx5e_rq {int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  wq_ctrl; TYPE_2__* mbuf; int /*<<< orphan*/  wq; int /*<<< orphan*/  lro; TYPE_1__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/ * mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MLX5EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct mlx5e_rq *rq)
{
	int wq_sz;
	int i;

	/* destroy all sysctl nodes */
	FUNC7(&rq->stats.ctx);

	/* free leftover LRO packets, if any */
	FUNC8(&rq->lro);

	wq_sz = FUNC6(&rq->wq);
	for (i = 0; i != wq_sz; i++) {
		if (rq->mbuf[i].mbuf != NULL) {
			FUNC2(rq->dma_tag, rq->mbuf[i].dma_map);
			FUNC4(rq->mbuf[i].mbuf);
		}
		FUNC1(rq->dma_tag, rq->mbuf[i].dma_map);
	}
	FUNC3(rq->mbuf, M_MLX5EN);
	FUNC5(&rq->wq_ctrl);
	FUNC0(rq->dma_tag);
}
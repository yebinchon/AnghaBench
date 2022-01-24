#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvme_tracker {int /*<<< orphan*/  payload_dma_map; } ;
struct nvme_qpair {scalar_t__ dma_tag_payload; scalar_t__ dma_tag; int /*<<< orphan*/  free_tr; struct nvme_tracker* act_tr; int /*<<< orphan*/  queuemem_map; int /*<<< orphan*/ * cmd; scalar_t__ res; TYPE_1__* ctrlr; int /*<<< orphan*/  lock; scalar_t__ tag; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NVME ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvme_tracker* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvme_tracker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_tracker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  tailq ; 

__attribute__((used)) static void
FUNC13(struct nvme_qpair *qpair)
{
	struct nvme_tracker	*tr;

	if (qpair->tag)
		FUNC8(qpair->ctrlr->dev, qpair->res, qpair->tag);

	if (FUNC11(&qpair->lock))
		FUNC10(&qpair->lock);

	if (qpair->res)
		FUNC7(qpair->ctrlr->dev, SYS_RES_IRQ,
		    FUNC12(qpair->res), qpair->res);

	if (qpair->cmd != NULL) {
		FUNC5(qpair->dma_tag, qpair->queuemem_map);
		FUNC6(qpair->dma_tag, qpair->cmd,
		    qpair->queuemem_map);
	}

	if (qpair->act_tr)
		FUNC9(qpair->act_tr, M_NVME);

	while (!FUNC0(&qpair->free_tr)) {
		tr = FUNC1(&qpair->free_tr);
		FUNC2(&qpair->free_tr, tr, tailq);
		FUNC4(qpair->dma_tag_payload,
		    tr->payload_dma_map);
		FUNC9(tr, M_NVME);
	}

	if (qpair->dma_tag)
		FUNC3(qpair->dma_tag);

	if (qpair->dma_tag_payload)
		FUNC3(qpair->dma_tag_payload);
}
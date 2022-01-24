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
struct lio_tq {int /*<<< orphan*/  work; int /*<<< orphan*/ * tq; struct octeon_device* ctxptr; } ;
struct octeon_device {int /*<<< orphan*/  octeon_id; int /*<<< orphan*/  cmd_resp_state; struct lio_tq dma_comp_tq; int /*<<< orphan*/  cmd_resp_wqlock; TYPE_1__* response_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending_req_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  LIO_DRV_ONLINE ; 
 int LIO_MAX_RESPONSE_LISTS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  lio_poll_req_completion ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int
FUNC9(struct octeon_device *oct)
{
	struct lio_tq	*ctq;
	int		i, ret = 0;

	for (i = 0; i < LIO_MAX_RESPONSE_LISTS; i++) {
		FUNC0(&oct->response_list[i].head);
		FUNC5(&oct->response_list[i].lock, "response_list_lock",
			 NULL, MTX_DEF);
		FUNC2(&oct->response_list[i].pending_req_count,
				     0);
	}
	FUNC5(&oct->cmd_resp_wqlock, "cmd_resp_wqlock", NULL, MTX_DEF);

	ctq = &oct->dma_comp_tq;
	ctq->tq = FUNC6("lio_dma_comp", M_WAITOK,
				   taskqueue_thread_enqueue, &ctq->tq);
	if (ctq->tq == NULL) {
		FUNC3(oct, "failed to create wq thread\n");
		return (-ENOMEM);
	}

	FUNC1(ctq->tq, &ctq->work, 0, lio_poll_req_completion,
			  (void *)ctq);
	ctq->ctxptr = oct;

	oct->cmd_resp_state = LIO_DRV_ONLINE;
	FUNC8(&ctq->tq, 1, PI_NET, "lio%d_dma_comp",
				oct->octeon_id);
	FUNC7(ctq->tq, &ctq->work, FUNC4(50));

	return (ret);
}
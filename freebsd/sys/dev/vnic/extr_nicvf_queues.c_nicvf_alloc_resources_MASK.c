#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct queue_set {int rbdr_cnt; int sq_cnt; int cq_cnt; int /*<<< orphan*/  qs_err_taskq; int /*<<< orphan*/  qs_err_task; int /*<<< orphan*/  cq_len; int /*<<< orphan*/ * cq; int /*<<< orphan*/  sq_len; int /*<<< orphan*/ * sq; int /*<<< orphan*/  rbdr_len; int /*<<< orphan*/ * rbdr; } ;
struct nicvf {int /*<<< orphan*/  dev; struct queue_set* qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BUFFER_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nicvf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*) ; 
 scalar_t__ FUNC3 (struct nicvf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct nicvf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct nicvf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nicvf_qs_err_task ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC8(struct nicvf *nic)
{
	struct queue_set *qs = nic->qs;
	int qidx;

	/* Alloc receive buffer descriptor ring */
	for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
		if (FUNC4(nic, &qs->rbdr[qidx], qs->rbdr_len,
				    DMA_BUFFER_LEN, qidx))
			goto alloc_fail;
	}

	/* Alloc send queue */
	for (qidx = 0; qidx < qs->sq_cnt; qidx++) {
		if (FUNC5(nic, &qs->sq[qidx], qs->sq_len, qidx))
			goto alloc_fail;
	}

	/* Alloc completion queue */
	for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
		if (FUNC3(nic, &qs->cq[qidx], qs->cq_len, qidx))
			goto alloc_fail;
	}

	/* Allocate QS error taskqueue */
	FUNC0(&qs->qs_err_task, 0, nicvf_qs_err_task, nic);
	qs->qs_err_taskq = FUNC6("nicvf_qs_err_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &qs->qs_err_taskq);
	FUNC7(&qs->qs_err_taskq, 1, PI_NET, "%s: qs_taskq",
	    FUNC1(nic->dev));

	return (0);
alloc_fail:
	FUNC2(nic);
	return (ENOMEM);
}
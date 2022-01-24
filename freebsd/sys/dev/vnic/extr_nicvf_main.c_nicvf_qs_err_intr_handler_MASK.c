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
struct queue_set {int /*<<< orphan*/  qs_err_task; int /*<<< orphan*/  qs_err_taskq; } ;
struct nicvf {struct queue_set* qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NICVF_INTR_QS_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct nicvf *nic = (struct nicvf *)arg;
	struct queue_set *qs = nic->qs;

	/* Disable Qset err interrupt and schedule softirq */
	FUNC1(nic, NICVF_INTR_QS_ERR, 0);
	FUNC2(qs->qs_err_taskq, &qs->qs_err_task);
	FUNC0(nic, NICVF_INTR_QS_ERR, 0);

}
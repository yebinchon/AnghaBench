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
struct queue_set {int dummy; } ;
struct nicvf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NICVF_SQ_RESET ; 
 int /*<<< orphan*/  NIC_QSET_SQ_0_7_CFG ; 
 int /*<<< orphan*/  NIC_QSET_SQ_0_7_STATUS ; 
 scalar_t__ FUNC0 (struct nicvf*,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nicvf *nic, struct queue_set *qs, int qidx)
{

	/* Disable send queue */
	FUNC1(nic, NIC_QSET_SQ_0_7_CFG, qidx, 0);
	/* Check if SQ is stopped */
	if (FUNC0(nic, qidx, NIC_QSET_SQ_0_7_STATUS, 21, 1, 0x01))
		return;
	/* Reset send queue */
	FUNC1(nic, NIC_QSET_SQ_0_7_CFG, qidx, NICVF_SQ_RESET);
}
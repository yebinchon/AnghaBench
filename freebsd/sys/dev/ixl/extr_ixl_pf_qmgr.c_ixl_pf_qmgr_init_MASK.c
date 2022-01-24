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
typedef  int u16 ;
struct ixl_pf_qmgr_qinfo {int dummy; } ;
struct ixl_pf_qmgr {int num_queues; int /*<<< orphan*/ * qinfo; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_IXL ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct ixl_pf_qmgr *qmgr, u16 num_queues)
{
	if (num_queues < 1)
		return (EINVAL);

	qmgr->num_queues = num_queues;
	qmgr->qinfo = FUNC0(num_queues * sizeof(struct ixl_pf_qmgr_qinfo),
	    M_IXL, M_ZERO | M_NOWAIT);
	if (qmgr->qinfo == NULL)
		return ENOMEM;

	return (0);
}
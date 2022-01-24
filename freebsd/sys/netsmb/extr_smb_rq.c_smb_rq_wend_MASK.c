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
struct TYPE_2__ {int mb_count; } ;
struct smb_rq {int* sr_wcount; TYPE_1__ sr_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1(struct smb_rq *rqp)
{
	if (rqp->sr_wcount == NULL) {
		FUNC0("no wcount\n");	/* actually panic */
		return;
	}
	if (rqp->sr_rq.mb_count & 1)
		FUNC0("odd word count\n");
	*rqp->sr_wcount = rqp->sr_rq.mb_count / 2;
}
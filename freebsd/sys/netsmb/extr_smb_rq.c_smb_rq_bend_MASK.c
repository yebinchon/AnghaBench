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
struct smb_rq {int /*<<< orphan*/ * sr_bcount; TYPE_1__ sr_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(struct smb_rq *rqp)
{
	int bcnt;

	if (rqp->sr_bcount == NULL) {
		FUNC0("no bcount\n");	/* actually panic */
		return;
	}
	bcnt = rqp->sr_rq.mb_count;
	if (bcnt > 0xffff)
		FUNC0("byte count too large (%d)\n", bcnt);
	FUNC1(rqp->sr_bcount, bcnt);
}
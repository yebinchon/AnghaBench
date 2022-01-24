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
struct fw_xferq {int flag; int /*<<< orphan*/  maxq; scalar_t__ psize; int /*<<< orphan*/ * bulkxfer; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWMAXQUEUE ; 
 int FWXFERQ_EXTBUF ; 
 int /*<<< orphan*/  M_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct fw_xferq *q)
{
	if (q->flag & FWXFERQ_EXTBUF) {
		if (q->buf != NULL)
			FUNC1(q->buf);
		q->buf = NULL;
		FUNC0(q->bulkxfer, M_FW);
		q->bulkxfer = NULL;
		q->flag &= ~FWXFERQ_EXTBUF;
		q->psize = 0;
		q->maxq = FWMAXQUEUE;
	}
	return (0);
}
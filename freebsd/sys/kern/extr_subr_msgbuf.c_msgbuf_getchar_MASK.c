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
typedef  scalar_t__ u_int ;
typedef  int u_char ;
struct msgbuf {scalar_t__ msg_wseq; scalar_t__ msg_size; int /*<<< orphan*/  msg_lock; void* msg_rseq; scalar_t__* msg_ptr; } ;

/* Variables and functions */
 void* FUNC0 (struct msgbuf*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct msgbuf*,scalar_t__,void*) ; 
 size_t FUNC2 (struct msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct msgbuf *mbp)
{
	u_int len, wseq;
	int c;

	FUNC3(&mbp->msg_lock);

	wseq = mbp->msg_wseq;
	len = FUNC1(mbp, wseq, mbp->msg_rseq);
	if (len == 0) {
		FUNC4(&mbp->msg_lock);
		return (-1);
	}
	if (len > mbp->msg_size)
		mbp->msg_rseq = FUNC0(mbp, wseq - mbp->msg_size);
	c = (u_char)mbp->msg_ptr[FUNC2(mbp, mbp->msg_rseq)];
	mbp->msg_rseq = FUNC0(mbp, mbp->msg_rseq + 1);

	FUNC4(&mbp->msg_lock);

	return (c);
}
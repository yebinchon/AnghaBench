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
struct msgbuf {scalar_t__ msg_wseq; scalar_t__ msg_rseq; scalar_t__ msg_size; int /*<<< orphan*/  msg_lock; int /*<<< orphan*/ * msg_ptr; } ;

/* Variables and functions */
 void* FUNC0 (struct msgbuf*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct msgbuf*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct msgbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct msgbuf *mbp, char *buf, int buflen)
{
	u_int len, pos, wseq;

	FUNC5(&mbp->msg_lock);

	wseq = mbp->msg_wseq;
	len = FUNC1(mbp, wseq, mbp->msg_rseq);
	if (len == 0) {
		FUNC6(&mbp->msg_lock);
		return (0);
	}
	if (len > mbp->msg_size) {
		mbp->msg_rseq = FUNC0(mbp, wseq - mbp->msg_size);
		len = mbp->msg_size;
	}
	pos = FUNC2(mbp, mbp->msg_rseq);
	len = FUNC4(len, mbp->msg_size - pos);
	len = FUNC4(len, (u_int)buflen);

	FUNC3(&mbp->msg_ptr[pos], buf, len);
	mbp->msg_rseq = FUNC0(mbp, mbp->msg_rseq + len);

	FUNC6(&mbp->msg_lock);

	return (len);
}
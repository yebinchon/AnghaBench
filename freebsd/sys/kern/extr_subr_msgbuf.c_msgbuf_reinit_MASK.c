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
struct msgbuf {scalar_t__ msg_magic; int msg_size; scalar_t__ msg_cksum; int msg_lastpri; int /*<<< orphan*/  msg_lock; int /*<<< orphan*/  msg_flags; void* msg_ptr; void* msg_rseq; void* msg_wseq; int /*<<< orphan*/  msg_seqmod; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGBUF_NEEDNL ; 
 void* FUNC0 (struct msgbuf*,void*) ; 
 scalar_t__ MSG_MAGIC ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct msgbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct msgbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct msgbuf*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void
FUNC8(struct msgbuf *mbp, void *ptr, int size)
{
	u_int cksum;

	if (mbp->msg_magic != MSG_MAGIC || mbp->msg_size != size) {
		FUNC5(mbp, ptr, size);
		return;
	}
	mbp->msg_seqmod = FUNC1(size);
	mbp->msg_wseq = FUNC0(mbp, mbp->msg_wseq);
	mbp->msg_rseq = FUNC0(mbp, mbp->msg_rseq);
        mbp->msg_ptr = ptr;
	cksum = FUNC3(mbp);
	if (cksum != mbp->msg_cksum) {
		if (bootverbose) {
			FUNC7("msgbuf cksum mismatch (read %x, calc %x)\n",
			    mbp->msg_cksum, cksum);
			FUNC7("Old msgbuf not recovered\n");
		}
		FUNC4(mbp);
	}

	mbp->msg_lastpri = -1;
	/* Assume that the old message buffer didn't end in a newline. */
	mbp->msg_flags |= MSGBUF_NEEDNL;
	FUNC2(&mbp->msg_lock, sizeof(mbp->msg_lock));
	FUNC6(&mbp->msg_lock, "msgbuf", NULL, MTX_SPIN);
}
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
typedef  size_t u_int ;
typedef  scalar_t__ u_char ;
struct msgbuf {int* msg_ptr; int /*<<< orphan*/  msg_cksum; } ;

/* Variables and functions */
 size_t FUNC0 (struct msgbuf* const,size_t) ; 
 size_t FUNC1 (struct msgbuf* const,size_t) ; 

__attribute__((used)) static void
FUNC2(struct msgbuf * const mbp, u_int * const seq, const int c)
{
	u_int pos;

	/* Make sure we properly wrap the sequence number. */
	pos = FUNC1(mbp, *seq);
	mbp->msg_cksum += (u_int)(u_char)c -
	    (u_int)(u_char)mbp->msg_ptr[pos];
	mbp->msg_ptr[pos] = c;
	*seq = FUNC0(mbp, *seq + 1);
}
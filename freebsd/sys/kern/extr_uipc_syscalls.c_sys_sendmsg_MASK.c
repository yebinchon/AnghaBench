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
struct thread {int /*<<< orphan*/  td_proc; } ;
struct sendmsg_args {int /*<<< orphan*/  flags; int /*<<< orphan*/  s; int /*<<< orphan*/  msg; } ;
struct msghdr {scalar_t__ msg_flags; struct iovec* msg_iov; int /*<<< orphan*/  msg_iovlen; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  SV_AOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct msghdr*,int) ; 
 int FUNC2 (struct iovec*,int /*<<< orphan*/ ,struct iovec**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iovec*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct thread *td, struct sendmsg_args *uap)
{
	struct msghdr msg;
	struct iovec *iov;
	int error;

	error = FUNC1(uap->msg, &msg, sizeof (msg));
	if (error != 0)
		return (error);
	error = FUNC2(msg.msg_iov, msg.msg_iovlen, &iov, EMSGSIZE);
	if (error != 0)
		return (error);
	msg.msg_iov = iov;
#ifdef COMPAT_OLDSOCK
	if (SV_PROC_FLAG(td->td_proc, SV_AOUT))
		msg.msg_flags = 0;
#endif
	error = FUNC4(td, uap->s, &msg, uap->flags);
	FUNC3(iov, M_IOV);
	return (error);
}
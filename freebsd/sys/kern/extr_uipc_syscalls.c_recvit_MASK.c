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
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_namelen; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int MSG_COMPAT ; 
 int /*<<< orphan*/  SV_AOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC2 (struct thread*,int,struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct thread *td, int s, struct msghdr *mp, void *namelenp)
{
	int error;

	error = FUNC2(td, s, mp, UIO_USERSPACE, NULL);
	if (error != 0)
		return (error);
	if (namelenp != NULL) {
		error = FUNC1(&mp->msg_namelen, namelenp, sizeof (socklen_t));
#ifdef COMPAT_OLDSOCK
		if ((mp->msg_flags & MSG_COMPAT) != 0 &&
		    SV_PROC_FLAG(td->td_proc, SV_AOUT))
			error = 0;	/* old recvfrom didn't check */
#endif
	}
	return (error);
}
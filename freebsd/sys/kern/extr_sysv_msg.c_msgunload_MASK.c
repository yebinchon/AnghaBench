#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {scalar_t__ msg_qbytes; TYPE_1__ msg_perm; } ;
struct msqid_kernel {TYPE_2__ u; } ;
struct TYPE_6__ {int msgmni; int msgtql; } ;

/* Variables and functions */
 int EBUSY ; 
 int MSG_LOCKED ; 
 int /*<<< orphan*/  M_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct msqid_kernel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msqid_kernel*) ; 
 int /*<<< orphan*/  FUNC2 (struct msqid_kernel*) ; 
 int /*<<< orphan*/  msg32_syscalls ; 
 scalar_t__ msg_prison_slot ; 
 int /*<<< orphan*/  msg_syscalls ; 
 struct msqid_kernel* msghdrs ; 
 TYPE_3__ msginfo ; 
 struct msqid_kernel* msgmaps ; 
 struct msqid_kernel* msgpool ; 
 int /*<<< orphan*/  msq_mtx ; 
 struct msqid_kernel* msqids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7()
{
	struct msqid_kernel *msqkptr;
	int msqid;
#ifdef MAC
	int i;
#endif

	FUNC6(msg_syscalls);
#ifdef COMPAT_FREEBSD32
	syscall32_helper_unregister(msg32_syscalls);
#endif

	for (msqid = 0; msqid < msginfo.msgmni; msqid++) {
		msqkptr = &msqids[msqid];
		if (msqkptr->u.msg_qbytes != 0 ||
		    (msqkptr->u.msg_perm.mode & MSG_LOCKED) != 0)
			break;
	}
	if (msqid != msginfo.msgmni)
		return (EBUSY);

	if (msg_prison_slot != 0)
		FUNC4(msg_prison_slot);
#ifdef MAC
	for (i = 0; i < msginfo.msgtql; i++)
		mac_sysvmsg_destroy(&msghdrs[i]);
	for (msqid = 0; msqid < msginfo.msgmni; msqid++)
		mac_sysvmsq_destroy(&msqids[msqid]);
#endif
	FUNC0(msgpool, M_MSG);
	FUNC0(msgmaps, M_MSG);
	FUNC0(msghdrs, M_MSG);
	FUNC0(msqids, M_MSG);
	FUNC3(&msq_mtx);
	return (0);
}
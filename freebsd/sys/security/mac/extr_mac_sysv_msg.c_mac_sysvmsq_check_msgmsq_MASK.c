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
struct ucred {int dummy; } ;
struct msqid_kernel {int /*<<< orphan*/  label; } ;
struct msg {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct msg*,struct msqid_kernel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct msg*,int /*<<< orphan*/ ,struct msqid_kernel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysvmsq_check_msgmsq ; 

int
FUNC2(struct ucred *cred, struct msg *msgptr,
	struct msqid_kernel *msqkptr)
{
	int error;

	FUNC1(sysvmsq_check_msgmsq, cred, msgptr,
	    msgptr->label, msqkptr, msqkptr->label);
	FUNC0(sysvmsq_check_msgmsq, error, cred, msgptr, msqkptr);

	return (error);
}
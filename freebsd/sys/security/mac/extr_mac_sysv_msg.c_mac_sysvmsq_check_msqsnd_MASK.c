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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct msqid_kernel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct msqid_kernel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysvmsq_check_msqsnd ; 

int
FUNC2(struct ucred *cred, struct msqid_kernel *msqkptr)
{
	int error;

	FUNC1(sysvmsq_check_msqsnd, cred, msqkptr,
	    msqkptr->label);
	FUNC0(sysvmsq_check_msqsnd, error, cred, msqkptr);

	return (error);
}
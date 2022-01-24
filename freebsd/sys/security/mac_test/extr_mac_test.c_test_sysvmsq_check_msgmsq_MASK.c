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
struct ucred {struct label* cr_label; } ;
struct msqid_kernel {int dummy; } ;
struct msg {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  MAGIC_SYSV_MSG ; 
 int /*<<< orphan*/  MAGIC_SYSV_MSQ ; 
 int /*<<< orphan*/  sysvmsq_check_msgmsq ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct msg *msgptr,
    struct label *msglabel, struct msqid_kernel *msqkptr,
    struct label *msqklabel)
{

	FUNC1(msqklabel, MAGIC_SYSV_MSQ);
	FUNC1(msglabel, MAGIC_SYSV_MSG);
	FUNC1(cred->cr_label, MAGIC_CRED);
	FUNC0(sysvmsq_check_msgmsq);

  	return (0);
}
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
struct ucred {int /*<<< orphan*/  cr_svuid; int /*<<< orphan*/  cr_uid; int /*<<< orphan*/  cr_ruid; } ;
struct thread {struct ucred* td_ucred; } ;
struct getresuid_args {int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  ruid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct thread *td, struct getresuid_args *uap)
{
	struct ucred *cred;
	int error1 = 0, error2 = 0, error3 = 0;

	cred = td->td_ucred;
	if (uap->ruid)
		error1 = FUNC0(&cred->cr_ruid,
		    uap->ruid, sizeof(cred->cr_ruid));
	if (uap->euid)
		error2 = FUNC0(&cred->cr_uid,
		    uap->euid, sizeof(cred->cr_uid));
	if (uap->suid)
		error3 = FUNC0(&cred->cr_svuid,
		    uap->suid, sizeof(cred->cr_svuid));
	return (error1 ? error1 : error2 ? error2 : error3);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct proc {TYPE_1__* p_ucred; } ;
struct mac_mls {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_label; } ;

/* Variables and functions */
 int EACCES ; 
 int ESRCH ; 
 struct mac_mls* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  mls_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct proc *p)
{
	struct mac_mls *subj, *obj;

	if (!mls_enabled)
		return (0);

	subj = FUNC0(cred->cr_label);
	obj = FUNC0(p->p_ucred->cr_label);

	/* XXX: range checks */
	if (!FUNC1(subj, obj))
		return (ESRCH);
	if (!FUNC1(obj, subj))
		return (EACCES);

	return (0);
}
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
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct mac_biba {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 struct mac_biba* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_biba*,struct mac_biba*) ; 
 int /*<<< orphan*/  biba_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *u1, struct ucred *u2)
{
	struct mac_biba *subj, *obj;

	if (!biba_enabled)
		return (0);

	subj = FUNC0(u1->cr_label);
	obj = FUNC0(u2->cr_label);

	/* XXX: range */
	if (!FUNC1(obj, subj))
		return (ESRCH);

	return (0);
}
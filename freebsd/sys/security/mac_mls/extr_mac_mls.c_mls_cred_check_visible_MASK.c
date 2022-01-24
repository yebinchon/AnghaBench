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
struct mac_mls {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 struct mac_mls* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_mls*,struct mac_mls*) ; 
 int /*<<< orphan*/  mls_enabled ; 

__attribute__((used)) static int
FUNC2(struct ucred *cr1, struct ucred *cr2)
{
	struct mac_mls *subj, *obj;

	if (!mls_enabled)
		return (0);

	subj = FUNC0(cr1->cr_label);
	obj = FUNC0(cr2->cr_label);

	/* XXX: range */
	if (!FUNC1(subj, obj))
		return (ESRCH);

	return (0);
}
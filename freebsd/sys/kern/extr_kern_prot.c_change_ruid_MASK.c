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
struct uidinfo {int /*<<< orphan*/  ui_uid; } ;
struct ucred {struct uidinfo* cr_ruidinfo; int /*<<< orphan*/  cr_ruid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uidinfo*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uidinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct uidinfo*) ; 

void
FUNC3(struct ucred *newcred, struct uidinfo *ruip)
{

	(void)FUNC0(newcred->cr_ruidinfo, -1, 0);
	newcred->cr_ruid = ruip->ui_uid;
	FUNC2(ruip);
	FUNC1(newcred->cr_ruidinfo);
	newcred->cr_ruidinfo = ruip;
	(void)FUNC0(newcred->cr_ruidinfo, 1, 0);
}
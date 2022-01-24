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
struct uidinfo {scalar_t__ ui_sbsize; int ui_uid; scalar_t__ ui_proccnt; scalar_t__ ui_vmsize; int /*<<< orphan*/  ui_racct; int /*<<< orphan*/  ui_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uidinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UIDINFO ; 
 int /*<<< orphan*/  FUNC1 (struct uidinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ui_hash ; 
 int /*<<< orphan*/  uihashtbl_lock ; 

void
FUNC8(struct uidinfo *uip)
{

	if (FUNC5(&uip->ui_ref))
		return;

	FUNC6(&uihashtbl_lock);
	if (FUNC4(&uip->ui_ref) == 0) {
		FUNC7(&uihashtbl_lock);
		return;
	}

	FUNC3(&uip->ui_racct);
	FUNC0(uip, ui_hash);
	FUNC7(&uihashtbl_lock);

	if (uip->ui_sbsize != 0)
		FUNC2("freeing uidinfo: uid = %d, sbsize = %ld\n",
		    uip->ui_uid, uip->ui_sbsize);
	if (uip->ui_proccnt != 0)
		FUNC2("freeing uidinfo: uid = %d, proccnt = %ld\n",
		    uip->ui_uid, uip->ui_proccnt);
	if (uip->ui_vmsize != 0)
		FUNC2("freeing uidinfo: uid = %d, swapuse = %lld\n",
		    uip->ui_uid, (unsigned long long)uip->ui_vmsize);
	FUNC1(uip, M_UIDINFO);
}
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
typedef  scalar_t__ uid_t ;
struct uidinfo {scalar_t__ ui_uid; int /*<<< orphan*/  ui_racct; int /*<<< orphan*/  ui_ref; } ;
struct ucred {struct uidinfo* cr_ruidinfo; struct uidinfo* cr_uidinfo; } ;
struct TYPE_2__ {struct ucred* td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uidinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UIDINFO ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (struct uidinfo*,int /*<<< orphan*/ ) ; 
 struct uidinfo* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ui_hash ; 
 int /*<<< orphan*/  uihashtbl_lock ; 
 int /*<<< orphan*/  FUNC11 (struct uidinfo*) ; 
 struct uidinfo* FUNC12 (scalar_t__) ; 

struct uidinfo *
FUNC13(uid_t uid)
{
	struct uidinfo *new_uip, *uip;
	struct ucred *cred;

	cred = curthread->td_ucred;
	if (cred->cr_uidinfo->ui_uid == uid) {
		uip = cred->cr_uidinfo;
		FUNC11(uip);
		return (uip);
	} else if (cred->cr_ruidinfo->ui_uid == uid) {
		uip = cred->cr_ruidinfo;
		FUNC11(uip);
		return (uip);
	}

	FUNC7(&uihashtbl_lock);
	uip = FUNC12(uid);
	FUNC8(&uihashtbl_lock);
	if (uip != NULL)
		return (uip);

	new_uip = FUNC3(sizeof(*new_uip), M_UIDINFO, M_WAITOK | M_ZERO);
	FUNC4(&new_uip->ui_racct);
	FUNC6(&new_uip->ui_ref, 1);
	new_uip->ui_uid = uid;

	FUNC9(&uihashtbl_lock);
	/*
	 * There's a chance someone created our uidinfo while we
	 * were in malloc and not holding the lock, so we have to
	 * make sure we don't insert a duplicate uidinfo.
	 */
	if ((uip = FUNC12(uid)) == NULL) {
		FUNC0(FUNC1(uid), new_uip, ui_hash);
		FUNC10(&uihashtbl_lock);
		uip = new_uip;
	} else {
		FUNC10(&uihashtbl_lock);
		FUNC5(&new_uip->ui_racct);
		FUNC2(new_uip, M_UIDINFO);
	}
	return (uip);
}
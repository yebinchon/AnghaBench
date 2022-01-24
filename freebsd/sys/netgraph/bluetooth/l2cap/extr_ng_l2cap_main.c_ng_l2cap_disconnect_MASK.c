#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ng_l2cap_p ;
typedef  scalar_t__ hook_p ;
struct TYPE_4__ {scalar_t__ hci; scalar_t__ l2c; scalar_t__ ctl; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	ng_l2cap_p	 l2cap = (ng_l2cap_p) FUNC3(FUNC0(hook));
	hook_p		*h = NULL;

	if (hook == l2cap->hci) {
		FUNC4(l2cap);
		h = &l2cap->hci;
	} else
	if (hook == l2cap->l2c) {
		FUNC5(l2cap);
		h = &l2cap->l2c;
	} else
	if (hook == l2cap->ctl)
		h = &l2cap->ctl;
	else
		return (EINVAL);

	*h = NULL;

	/* Shutdown when all hooks are disconnected */
	if (FUNC2(FUNC0(hook)) == 0 &&
	    FUNC1(FUNC0(hook)))
		FUNC6(FUNC0(hook));

	return (0);
}
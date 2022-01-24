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
struct mbuf {int dummy; } ;
typedef  TYPE_1__* ng_l2cap_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  scalar_t__ hook_p ;
struct TYPE_4__ {scalar_t__ hci; scalar_t__ l2c; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,struct mbuf*) ; 
 int FUNC6 (TYPE_1__*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC7(hook_p hook, item_p item)
{
	ng_l2cap_p	 l2cap = (ng_l2cap_p) FUNC4(FUNC3(hook));
	struct mbuf	*m = NULL;
	int		 error = 0;

	/* Detach mbuf, discard item and process data */
	FUNC0(item, m);
	FUNC1(item);

	if (hook == l2cap->hci)
		error = FUNC6(l2cap, m);
	else if (hook == l2cap->l2c)
		error = FUNC5(l2cap, m);
	else {
		FUNC2(m);
		error = EINVAL;
	}

	return (error);
}
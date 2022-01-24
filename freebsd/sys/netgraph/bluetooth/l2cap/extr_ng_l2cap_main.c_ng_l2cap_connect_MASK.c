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
typedef  TYPE_1__* ng_l2cap_p ;
typedef  scalar_t__ hook_p ;
struct TYPE_2__ {scalar_t__ hci; scalar_t__ l2c; scalar_t__ ctl; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ng_l2cap_lower_rcvmsg ; 
 int /*<<< orphan*/  ng_l2cap_send_hook_info ; 
 int /*<<< orphan*/  ng_l2cap_upper_rcvmsg ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(hook_p hook)
{
	ng_l2cap_p	l2cap = (ng_l2cap_p) FUNC2(FUNC0(hook));
	int		error = 0;

	if (hook == l2cap->hci)
		FUNC1(hook, ng_l2cap_lower_rcvmsg);
	else
	if (hook == l2cap->l2c || hook == l2cap->ctl) {
		FUNC1(hook, ng_l2cap_upper_rcvmsg);

		/* Send delayed notification to the upper layer */
		error = FUNC3(l2cap->node, hook, ng_l2cap_send_hook_info,
				NULL, 0);
	} else
		error = EINVAL;

	return (error);
}
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
struct ng_mesg {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NGM_L2CAP_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (struct ng_mesg*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ng_btsocket_l2cap_raw_node ; 

__attribute__((used)) static int
FUNC3(hook_p hook, int cmd, void *arg, int arglen)
{
	struct ng_mesg	*msg = NULL;
	int		 error = 0;

	FUNC0(msg, NGM_L2CAP_COOKIE, cmd, arglen, M_NOWAIT);
	if (msg == NULL)
		return (ENOMEM);

	if (arg != NULL && arglen > 0)
		FUNC2(arg, msg->data, arglen);

	FUNC1(error, ng_btsocket_l2cap_raw_node, msg, hook, 0);

	return (error);
}
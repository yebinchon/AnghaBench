#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ng_mesg {int dummy; } ;
typedef  TYPE_1__* priv_p ;
typedef  scalar_t__ hook_p ;
struct TYPE_3__ {scalar_t__ ethernet_hook; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NGM_ETHER_COOKIE ; 
 int /*<<< orphan*/  NGM_ETHER_GET_ENADDR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct ng_mesg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(hook_p hook)
{
	const priv_p privp = FUNC3(FUNC0(hook));
	struct ng_mesg *msg;
	int error;

	if (hook != privp->ethernet_hook)
		return (0);

	/*
	 * If this is Ethernet hook, then request MAC address
	 * from our downstream.
	 */
	FUNC1(msg, NGM_ETHER_COOKIE, NGM_ETHER_GET_ENADDR, 0, M_NOWAIT);
	if (msg == NULL)
		return (ENOBUFS);

	/*
	 * Our hook and peer hook have HK_INVALID flag set,
	 * so we can't use NG_SEND_MSG_HOOK() macro here.
	 */
	FUNC5(error, privp->node, msg,
	    FUNC2(FUNC4(privp->ethernet_hook)),
	    FUNC2(privp->node));

	return (error);
}
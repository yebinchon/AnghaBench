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
struct msg {int /*<<< orphan*/ * label; } ;

/* Variables and functions */
 int MPC_OBJECT_SYSVMSG ; 
 int mac_labeled ; 
 int /*<<< orphan*/ * FUNC0 () ; 

void
FUNC1(struct msg *msgptr)
{

	if (mac_labeled & MPC_OBJECT_SYSVMSG)
		msgptr->label = FUNC0();
	else
		msgptr->label = NULL;
}
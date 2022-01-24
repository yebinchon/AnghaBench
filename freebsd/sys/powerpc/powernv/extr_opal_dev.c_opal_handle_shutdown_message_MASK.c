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
struct opal_msg {int /*<<< orphan*/ * params; } ;

/* Variables and functions */
#define  OPAL_SOFT_OFF 129 
#define  OPAL_SOFT_REBOOT 128 
 int RB_POWEROFF ; 
 int RB_REROOT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(void *unused, struct opal_msg *msg)
{
	int howto;

	switch (FUNC0(msg->params[0])) {
	case OPAL_SOFT_OFF:
		howto = RB_POWEROFF;
		break;
	case OPAL_SOFT_REBOOT:
		howto = RB_REROOT;
		break;
	}
	FUNC1(howto);
}
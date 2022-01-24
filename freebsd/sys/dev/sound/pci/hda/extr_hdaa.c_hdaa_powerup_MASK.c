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
struct hdaa_devinfo {int nid; int startnode; int endnode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HDA_CMD_POWER_STATE_D0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct hdaa_devinfo *devinfo)
{
	int i;

	FUNC2(devinfo->dev,
	    FUNC1(0,
	    devinfo->nid, HDA_CMD_POWER_STATE_D0));
	FUNC0(100);

	for (i = devinfo->startnode; i < devinfo->endnode; i++) {
		FUNC2(devinfo->dev,
		    FUNC1(0,
		    i, HDA_CMD_POWER_STATE_D0));
	}
	FUNC0(1000);
}
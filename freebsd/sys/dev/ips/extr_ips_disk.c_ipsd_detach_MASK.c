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
struct TYPE_2__ {int state; int /*<<< orphan*/  ipsd_disk; } ;
typedef  TYPE_1__ ipsdisk_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int EBUSY ; 
 int IPS_DEV_OPEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(device_t dev)
{
	ipsdisk_softc_t *dsc;

	FUNC0(2, dev,"in detach\n");
	dsc = (ipsdisk_softc_t *)FUNC1(dev);
	if(dsc->state & IPS_DEV_OPEN)
		return (EBUSY);
	FUNC2(dsc->ipsd_disk);
	return 0;
}
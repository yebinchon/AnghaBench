#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int state; scalar_t__ device_file; scalar_t__ command_dmatag; scalar_t__ sg_dmatag; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ips_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int EBUSY ; 
 int IPS_DEV_OPEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 

int FUNC7(ips_softc_t *sc)
{
	int error = 0;
	if(sc->state & IPS_DEV_OPEN)
		return EBUSY;
	if((error = FUNC6(sc)))
		return error;
	if(FUNC5(sc)){
		FUNC4(sc->dev,
		     "trying to exit when command queue is not empty!\n");
		return EBUSY;
	}
	FUNC0(1, sc->dev, "free\n");
	FUNC2(&sc->timer);

	if(sc->sg_dmatag)
		FUNC1(sc->sg_dmatag);
	if(sc->command_dmatag)
		FUNC1(sc->command_dmatag);
	if(sc->device_file)
	        FUNC3(sc->device_file);
        return 0;
}
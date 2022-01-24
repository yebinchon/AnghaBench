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
struct TYPE_4__ {int pause; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ mxge_softc_t ;
typedef  int /*<<< orphan*/  mxge_cmd_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MXGEFW_DISABLE_FLOW_CONTROL ; 
 int /*<<< orphan*/  MXGEFW_ENABLE_FLOW_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(mxge_softc_t *sc, int pause)
{	
	mxge_cmd_t cmd;
	int status;

	if (pause)
		status = FUNC1(sc, MXGEFW_ENABLE_FLOW_CONTROL,
				       &cmd);
	else
		status = FUNC1(sc, MXGEFW_DISABLE_FLOW_CONTROL,
				       &cmd);

	if (status) {
		FUNC0(sc->dev, "Failed to set flow control mode\n");
		return ENXIO;
	}
	sc->pause = pause;
	return 0;
}
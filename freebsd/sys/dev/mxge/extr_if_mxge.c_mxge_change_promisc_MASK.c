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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ mxge_softc_t ;
typedef  int /*<<< orphan*/  mxge_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  MXGEFW_DISABLE_PROMISC ; 
 int /*<<< orphan*/  MXGEFW_ENABLE_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ mxge_always_promisc ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(mxge_softc_t *sc, int promisc)
{	
	mxge_cmd_t cmd;
	int status;

	if (mxge_always_promisc)
		promisc = 1;

	if (promisc)
		status = FUNC1(sc, MXGEFW_ENABLE_PROMISC,
				       &cmd);
	else
		status = FUNC1(sc, MXGEFW_DISABLE_PROMISC,
				       &cmd);

	if (status) {
		FUNC0(sc->dev, "Failed to set promisc mode\n");
	}
}
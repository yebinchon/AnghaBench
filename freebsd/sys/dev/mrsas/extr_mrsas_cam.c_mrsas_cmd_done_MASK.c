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
struct mrsas_softc {int /*<<< orphan*/  sim_lock; } ;
struct mrsas_mpt_cmd {int callout_owner; int /*<<< orphan*/ * ccb_ptr; int /*<<< orphan*/  cm_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mrsas_mpt_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct mrsas_softc*,struct mrsas_mpt_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct mrsas_softc *sc, struct mrsas_mpt_cmd *cmd)
{
	FUNC2(sc, cmd);
	
	FUNC3(&sc->sim_lock);
	if (cmd->callout_owner) {
		FUNC0(&cmd->cm_callout);
		cmd->callout_owner  = false;
	}
	FUNC5(cmd->ccb_ptr);
	cmd->ccb_ptr = NULL;
	FUNC4(&sc->sim_lock);
	FUNC1(cmd);
}
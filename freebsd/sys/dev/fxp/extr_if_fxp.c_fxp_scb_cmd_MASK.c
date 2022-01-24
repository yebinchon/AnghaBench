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
struct fxp_softc {scalar_t__ cu_resume_bug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ,int) ; 
 int FXP_CB_COMMAND_NOP ; 
 int /*<<< orphan*/  FXP_CSR_SCB_COMMAND ; 
 int FXP_SCB_COMMAND_CU_RESUME ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*) ; 

__attribute__((used)) static void
FUNC2(struct fxp_softc *sc, int cmd)
{

	if (cmd == FXP_SCB_COMMAND_CU_RESUME && sc->cu_resume_bug) {
		FUNC0(sc, FXP_CSR_SCB_COMMAND, FXP_CB_COMMAND_NOP);
		FUNC1(sc);
	}
	FUNC0(sc, FXP_CSR_SCB_COMMAND, cmd);
}
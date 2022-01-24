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
struct ecore_func_state_params {int cmd; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  ECORE_F_CMD_AFEX_UPDATE 137 
#define  ECORE_F_CMD_AFEX_VIFLISTS 136 
#define  ECORE_F_CMD_HW_INIT 135 
#define  ECORE_F_CMD_HW_RESET 134 
#define  ECORE_F_CMD_SET_TIMESYNC 133 
#define  ECORE_F_CMD_START 132 
#define  ECORE_F_CMD_STOP 131 
#define  ECORE_F_CMD_SWITCH_UPDATE 130 
#define  ECORE_F_CMD_TX_START 129 
#define  ECORE_F_CMD_TX_STOP 128 
 int ECORE_INVAL ; 
 int FUNC1 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC2 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC3 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC4 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC5 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC6 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC7 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC8 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC9 (struct bxe_softc*,struct ecore_func_state_params*) ; 
 int FUNC10 (struct bxe_softc*,struct ecore_func_state_params*) ; 

__attribute__((used)) static int FUNC11(struct bxe_softc *sc,
			       struct ecore_func_state_params *params)
{
	switch (params->cmd) {
	case ECORE_F_CMD_HW_INIT:
		return FUNC1(sc, params);
	case ECORE_F_CMD_START:
		return FUNC6(sc, params);
	case ECORE_F_CMD_STOP:
		return FUNC7(sc, params);
	case ECORE_F_CMD_HW_RESET:
		return FUNC2(sc, params);
	case ECORE_F_CMD_AFEX_UPDATE:
		return FUNC3(sc, params);
	case ECORE_F_CMD_AFEX_VIFLISTS:
		return FUNC4(sc, params);
	case ECORE_F_CMD_TX_STOP:
		return FUNC10(sc, params);
	case ECORE_F_CMD_TX_START:
		return FUNC9(sc, params);
	case ECORE_F_CMD_SWITCH_UPDATE:
		return FUNC8(sc, params);
	case ECORE_F_CMD_SET_TIMESYNC:
		return FUNC5(sc, params);
	default:
		FUNC0("Unknown command: %d\n", params->cmd);
		return ECORE_INVAL;
	}
}
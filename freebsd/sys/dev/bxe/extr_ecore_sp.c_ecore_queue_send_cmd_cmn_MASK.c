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
struct ecore_queue_state_params {int cmd; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ECORE_INVAL ; 
#define  ECORE_Q_CMD_ACTIVATE 137 
#define  ECORE_Q_CMD_CFC_DEL 136 
#define  ECORE_Q_CMD_DEACTIVATE 135 
#define  ECORE_Q_CMD_EMPTY 134 
#define  ECORE_Q_CMD_HALT 133 
#define  ECORE_Q_CMD_INIT 132 
#define  ECORE_Q_CMD_SETUP_TX_ONLY 131 
#define  ECORE_Q_CMD_TERMINATE 130 
#define  ECORE_Q_CMD_UPDATE 129 
#define  ECORE_Q_CMD_UPDATE_TPA 128 
 int FUNC1 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC2 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC3 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC4 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC5 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC6 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC7 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC8 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC9 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int FUNC10 (struct bxe_softc*,struct ecore_queue_state_params*) ; 

__attribute__((used)) static inline int FUNC11(struct bxe_softc *sc,
					struct ecore_queue_state_params *params)
{
	switch (params->cmd) {
	case ECORE_Q_CMD_INIT:
		return FUNC1(sc, params);
	case ECORE_Q_CMD_SETUP_TX_ONLY:
		return FUNC7(sc, params);
	case ECORE_Q_CMD_DEACTIVATE:
		return FUNC4(sc, params);
	case ECORE_Q_CMD_ACTIVATE:
		return FUNC2(sc, params);
	case ECORE_Q_CMD_UPDATE:
		return FUNC9(sc, params);
	case ECORE_Q_CMD_UPDATE_TPA:
		return FUNC10(sc, params);
	case ECORE_Q_CMD_HALT:
		return FUNC6(sc, params);
	case ECORE_Q_CMD_CFC_DEL:
		return FUNC3(sc, params);
	case ECORE_Q_CMD_TERMINATE:
		return FUNC8(sc, params);
	case ECORE_Q_CMD_EMPTY:
		return FUNC5(sc, params);
	default:
		FUNC0("Unknown command: %d\n", params->cmd);
		return ECORE_INVAL;
	}
}
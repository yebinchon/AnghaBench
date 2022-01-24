#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int reset_phase; } ;
struct TYPE_4__ {TYPE_1__ hw_reset; } ;
struct ecore_func_state_params {struct ecore_func_sp_obj* f_obj; TYPE_2__ params; } ;
struct ecore_func_sp_obj {int /*<<< orphan*/  (* complete_cmd ) (struct bxe_softc*,struct ecore_func_sp_obj*,int /*<<< orphan*/ ) ;struct ecore_func_sp_drv_ops* drv; } ;
struct ecore_func_sp_drv_ops {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  ECORE_F_CMD_HW_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int /*<<< orphan*/ ,int) ; 
 int ECORE_SUCCESS ; 
#define  FW_MSG_CODE_DRV_UNLOAD_COMMON 130 
#define  FW_MSG_CODE_DRV_UNLOAD_FUNCTION 129 
#define  FW_MSG_CODE_DRV_UNLOAD_PORT 128 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct ecore_func_sp_obj*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(struct bxe_softc *sc,
				      struct ecore_func_state_params *params)
{
	uint32_t reset_phase = params->params.hw_reset.reset_phase;
	struct ecore_func_sp_obj *o = params->f_obj;
	const struct ecore_func_sp_drv_ops *drv = o->drv;

	FUNC2(sc, "function %d  reset_phase %x\n", FUNC0(sc),
		  reset_phase);

	switch (reset_phase) {
	case FW_MSG_CODE_DRV_UNLOAD_COMMON:
		FUNC3(sc, drv);
		break;
	case FW_MSG_CODE_DRV_UNLOAD_PORT:
		FUNC5(sc, drv);
		break;
	case FW_MSG_CODE_DRV_UNLOAD_FUNCTION:
		FUNC4(sc, drv);
		break;
	default:
		FUNC1("Unknown reset_phase (0x%x) from MCP\n",
			  reset_phase);
		break;
	}

	/* Complete the command immediately: no ramrods have been sent. */
	o->complete_cmd(sc, o, ECORE_F_CMD_HW_RESET);

	return ECORE_SUCCESS;
}
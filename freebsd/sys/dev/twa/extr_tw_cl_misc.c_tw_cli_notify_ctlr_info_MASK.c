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
struct tw_cli_ctlr_context {int /*<<< orphan*/  ctlr_handle; } ;
typedef  int /*<<< orphan*/  TW_VOID ;
typedef  int /*<<< orphan*/  TW_UINT8 ;
typedef  int /*<<< orphan*/  TW_INT8 ;
typedef  scalar_t__ TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  TWA_PARAM_CONTROLLER_PORT_COUNT ; 
 int /*<<< orphan*/  TWA_PARAM_CONTROLLER_TABLE ; 
 int /*<<< orphan*/  TWA_PARAM_CTLR_MODEL ; 
 int /*<<< orphan*/  TWA_PARAM_VERSION_BIOS ; 
 int /*<<< orphan*/  TWA_PARAM_VERSION_FW ; 
 int /*<<< orphan*/  TWA_PARAM_VERSION_TABLE ; 
 int /*<<< orphan*/  TW_CL_FALSE ; 
 int /*<<< orphan*/  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ; 
 scalar_t__ TW_CL_NULL ; 
 int /*<<< orphan*/  TW_CL_SEVERITY_INFO_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct tw_cli_ctlr_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

TW_VOID
FUNC4(struct tw_cli_ctlr_context *ctlr)
{
	TW_INT8		fw_ver[16];
	TW_INT8		bios_ver[16];
	TW_INT8		ctlr_model[16];
	TW_INT32	error[3];
	TW_UINT8	num_ports = 0;

	FUNC1(5, ctlr->ctlr_handle, FUNC3(), "entered");

	/* Get the port count. */
	error[0] = FUNC2(ctlr, TWA_PARAM_CONTROLLER_TABLE,
			TWA_PARAM_CONTROLLER_PORT_COUNT, &num_ports,
			1, TW_CL_NULL);

	/* Get the firmware and BIOS versions. */
	error[0] = FUNC2(ctlr, TWA_PARAM_VERSION_TABLE,
			TWA_PARAM_VERSION_FW, fw_ver, 16, TW_CL_NULL);
	error[1] = FUNC2(ctlr, TWA_PARAM_VERSION_TABLE,
			TWA_PARAM_VERSION_BIOS, bios_ver, 16, TW_CL_NULL);
	error[2] = FUNC2(ctlr, TWA_PARAM_VERSION_TABLE,
			TWA_PARAM_CTLR_MODEL, ctlr_model, 16, TW_CL_NULL);

	FUNC0(ctlr->ctlr_handle, TW_CL_FALSE,
		TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
		0x1300, 0x3, TW_CL_SEVERITY_INFO_STRING,
		"Controller details:",
		"Model %.16s, %d ports, Firmware %.16s, BIOS %.16s",
		error[2]?(TW_INT8 *)TW_CL_NULL:ctlr_model,
		num_ports,
		error[0]?(TW_INT8 *)TW_CL_NULL:fw_ver,
		error[1]?(TW_INT8 *)TW_CL_NULL:bios_ver);
}
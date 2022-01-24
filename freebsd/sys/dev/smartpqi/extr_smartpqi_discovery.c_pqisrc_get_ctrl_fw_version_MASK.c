#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int fw_build_number; char* fw_version; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
struct TYPE_11__ {int fw_build_number; int /*<<< orphan*/  fw_version; } ;
typedef  TYPE_2__ bmic_ident_ctrl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int FUNC9 (char*) ; 

int FUNC10(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	bmic_ident_ctrl_t *identify_ctrl;

	FUNC1("IN\n");

	identify_ctrl = FUNC5(softs, sizeof(*identify_ctrl));
	if (!identify_ctrl) {
		FUNC0("failed to allocate memory for identify_ctrl\n");
		return PQI_STATUS_FAILURE;
	}

	FUNC4(identify_ctrl, 0, sizeof(*identify_ctrl));

	ret = FUNC7(softs, identify_ctrl);
	if (ret)
		goto out;
     
	softs->fw_build_number = identify_ctrl->fw_build_number;
	FUNC3(softs->fw_version, identify_ctrl->fw_version,
		sizeof(identify_ctrl->fw_version));
	softs->fw_version[sizeof(identify_ctrl->fw_version)] = '\0';
	FUNC8(softs->fw_version +
		FUNC9(softs->fw_version),
		sizeof(softs->fw_version),
		"-%u", identify_ctrl->fw_build_number);
out:
	FUNC6(softs, (char *)identify_ctrl, sizeof(*identify_ctrl));
	FUNC2("Firmware version: %s Firmware build number: %d\n", softs->fw_version, softs->fw_build_number);
	FUNC1("OUT\n");
	return ret;
}
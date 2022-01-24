#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int pqi_reset_quiesce_allowed; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int SIS_SUPPORT_EXT_OPT ; 
 int SIS_SUPPORT_PQI ; 
 int SIS_SUPPORT_PQI_RESET_QUIESCE ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int*,int*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 

int FUNC8(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	uint32_t prop = 0;
	uint32_t ext_prop = 0;

	FUNC1("IN\n");

	ret = FUNC3(softs);
	if (ret) {
		FUNC0("Failed to switch back the adapter to SIS mode!\n");
		goto err_out;
	}

	/* Check FW status ready	*/
	ret = FUNC2(softs);
	if (ret) {
		FUNC0("PQI Controller is not ready !!!\n");
		goto err_out;
	}

	/* Check For PQI support(19h) */
	ret = FUNC4(softs, &prop, &ext_prop);
	if (ret) {
		FUNC0("Failed to get adapter properties\n");
		goto err_out;
	}
	if (!((prop & SIS_SUPPORT_EXT_OPT) &&
		(ext_prop & SIS_SUPPORT_PQI))) {
		FUNC0("PQI Mode Not Supported\n");
		ret = PQI_STATUS_FAILURE;
		goto err_out;
	}

	softs->pqi_reset_quiesce_allowed = false;
	if (ext_prop & SIS_SUPPORT_PQI_RESET_QUIESCE)
		softs->pqi_reset_quiesce_allowed = true;

	/* Send GET_COMM_PREFERRED_SETTINGS (26h)  */
	ret = FUNC5(softs);
	if (ret) {
		FUNC0("Failed to get adapter pref settings\n");
		goto err_out;
	}

	/* Get PQI settings , 3000h*/
	ret = FUNC6(softs);
	if (ret) {
		FUNC0("Failed to get PQI Capabilities\n");
		goto err_out;
	}

	/* Init struct base addr */
	ret = FUNC7(softs);
	if (ret) {
		FUNC0("Failed to set init struct base addr\n");
		goto err_out;
	}

	FUNC1("OUT\n");
	return ret;

err_out:
	FUNC1("OUT failed\n");
	return ret;
}
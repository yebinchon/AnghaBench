#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_9__ {char* status; int /*<<< orphan*/  semaphore; int /*<<< orphan*/  preferred_d_id; int /*<<< orphan*/  hard_alpa; int /*<<< orphan*/ * wwnn; int /*<<< orphan*/ * wwpn; } ;
typedef  TYPE_2__ ocs_mgmt_get_nvparms_result_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ ENXIO ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_SEM_FOREVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  ocs_mgmt_get_nvparms_cb ; 
 int /*<<< orphan*/  ocs_mgmt_set_nvparms_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,char*) ; 
 char* FUNC8 (char**,char*) ; 

__attribute__((used)) static int32_t
FUNC9(ocs_t *ocs, char *name, char *wwn_p)
{
	ocs_mgmt_get_nvparms_result_t result;
	uint8_t new_wwpn[8];
	uint8_t new_wwnn[8];
	char *wwpn_p = NULL;
	char *wwnn_p = NULL;
	int32_t rc = -1;
	int wwpn = 0;
	int wwnn = 0;
	int i;

	/* This is a read-modify-write operation, so first we have to read
	 * the current values
	 */
	FUNC4(&(result.semaphore), 0, "set_nv_wwn1");

	rc = FUNC0(&ocs->hw, ocs_mgmt_get_nvparms_cb, &result);

	if (rc == OCS_HW_RTN_SUCCESS) {
		if (FUNC5(&(result.semaphore), OCS_SEM_FOREVER) != 0) {
			/* Undefined failure */
			FUNC2(ocs, "ocs_sem_p failed\n");
			return -ENXIO;
		}
		if (result.status != 0) {
			FUNC3(ocs, "getting nvparms status 0x%x\n", result.status);
			return -1;
		}
	}

	/* wwn_p contains wwpn_p@wwnn_p values */
	if (wwn_p != NULL) {
		wwpn_p = FUNC8(&wwn_p, "@");
		wwnn_p = wwn_p;
	}

	if (wwpn_p != NULL) {
		wwpn = FUNC7(wwpn_p, "NA");
	}

	if (wwnn_p != NULL) {
		wwnn = FUNC7(wwnn_p, "NA");
	}

	/* Parse the new WWPN */
	if ((wwpn_p != NULL) && (wwpn != 0)) {
		if (FUNC6(wwpn_p, "%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx",
				&(new_wwpn[0]), &(new_wwpn[1]), &(new_wwpn[2]),
				&(new_wwpn[3]), &(new_wwpn[4]), &(new_wwpn[5]),
				&(new_wwpn[6]), &(new_wwpn[7])) != 8) {
			FUNC3(ocs, "can't parse WWPN %s\n", wwpn_p);
			return -1;
		}
	}

	/* Parse the new WWNN */
	if ((wwnn_p != NULL) && (wwnn != 0 )) {
		if (FUNC6(wwnn_p, "%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx",
				&(new_wwnn[0]), &(new_wwnn[1]), &(new_wwnn[2]),
				&(new_wwnn[3]), &(new_wwnn[4]), &(new_wwnn[5]),
				&(new_wwnn[6]), &(new_wwnn[7])) != 8) {
			FUNC3(ocs, "can't parse WWNN %s\n", wwnn_p);
			return -1;
		}
	}

	for (i = 0; i < 8; i++) {
		/* Use active wwpn, if new one is not provided */
		if (wwpn == 0) {
			new_wwpn[i] = result.wwpn[i];
		}

		/* Use active wwnn, if new one is not provided */
		if (wwnn == 0) {
			new_wwnn[i] = result.wwnn[i];
		}
	}

	/* Modify the nv_wwnn and nv_wwpn, then write it back */
	FUNC4(&(result.semaphore), 0, "set_nv_wwn2");

	rc = FUNC1(&ocs->hw, ocs_mgmt_set_nvparms_cb, new_wwpn,
				 new_wwnn, result.hard_alpa, result.preferred_d_id,
				 &result);
	if (rc == OCS_HW_RTN_SUCCESS) {
		if (FUNC5(&(result.semaphore), OCS_SEM_FOREVER) != 0) {
			/* Undefined failure */
			FUNC2(ocs, "ocs_sem_p failed\n");
			return -ENXIO;
		}
		if (result.status != 0) {
			FUNC3(ocs, "setting wwn status 0x%x\n", result.status);
			return -1;
		}
	}

	return rc;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ocs_textbuf_t ;
struct TYPE_7__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_8__ {scalar_t__ status; int* wwpn; int /*<<< orphan*/  semaphore; } ;
typedef  TYPE_2__ ocs_mgmt_get_nvparms_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_MODE_RW ; 
 scalar_t__ OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_SEM_FOREVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ocs_mgmt_get_nvparms_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static void
FUNC7(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
	char result_string[24];
	ocs_mgmt_get_nvparms_result_t result;

	FUNC4(&(result.semaphore), 0, "get_nv_wwpn");

	if(FUNC0(&ocs->hw, ocs_mgmt_get_nvparms_cb, &result) == OCS_HW_RTN_SUCCESS) {
		if (FUNC5(&(result.semaphore), OCS_SEM_FOREVER) != 0) {
			/* Undefined failure */
			FUNC1(ocs, "ocs_sem_p failed\n");
			return;
		}
		if (result.status == 0) {
			/* Success.  Copy wwpn from result struct to result string */
			FUNC6(result_string, "%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x",
					result.wwpn[0], result.wwpn[1], result.wwpn[2],
					result.wwpn[3], result.wwpn[4], result.wwpn[5],
					result.wwpn[6], result.wwpn[7]);
			FUNC3(textbuf, MGMT_MODE_RW, "nv_wwpn", result_string);
		} else {
			FUNC2(ocs, "getting wwpn status 0x%x\n", result.status);
		}
	}
}
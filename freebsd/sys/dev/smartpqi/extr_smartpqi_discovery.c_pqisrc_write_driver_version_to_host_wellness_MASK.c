#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct bmic_host_wellness_driver_version {char* start_tag; char* driver_version_tag; char* driver_version; char* end_tag; int /*<<< orphan*/  driver_version_length; } ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_6__ {int /*<<< orphan*/  os_name; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMIC_WRITE_HOST_WELLNESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  PQISRC_DRIVER_VERSION ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 scalar_t__ RAID_CTLR_LUNID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct bmic_host_wellness_driver_version* FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,size_t) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,struct bmic_host_wellness_driver_version*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC10(pqisrc_softstate_t *softs)
{
	int rval = PQI_STATUS_SUCCESS;
	struct bmic_host_wellness_driver_version *host_wellness_driver_ver;
	size_t data_length;
	pqisrc_raid_req_t request;

	FUNC2("IN\n");

	FUNC4(&request, 0, sizeof(request));	
	data_length = sizeof(*host_wellness_driver_ver);

	host_wellness_driver_ver = FUNC5(softs, data_length);
	if (!host_wellness_driver_ver) {
		FUNC1("failed to allocate memory for host wellness driver_version\n");
		return PQI_STATUS_FAILURE;
	}

	host_wellness_driver_ver->start_tag[0] = '<';
	host_wellness_driver_ver->start_tag[1] = 'H';
	host_wellness_driver_ver->start_tag[2] = 'W';
	host_wellness_driver_ver->start_tag[3] = '>';
	host_wellness_driver_ver->driver_version_tag[0] = 'D';
	host_wellness_driver_ver->driver_version_tag[1] = 'V';
	host_wellness_driver_ver->driver_version_length = FUNC3(sizeof(host_wellness_driver_ver->driver_version));
	FUNC9(host_wellness_driver_ver->driver_version, softs->os_name,
        sizeof(host_wellness_driver_ver->driver_version));
    if (FUNC8(softs->os_name) < sizeof(host_wellness_driver_ver->driver_version) ) {
        FUNC9(host_wellness_driver_ver->driver_version + FUNC8(softs->os_name), PQISRC_DRIVER_VERSION,
			sizeof(host_wellness_driver_ver->driver_version) -  FUNC8(softs->os_name));
    } else {
        FUNC0("OS name length(%lu) is longer than buffer of driver_version\n",
            FUNC8(softs->os_name));
    }
	host_wellness_driver_ver->driver_version[sizeof(host_wellness_driver_ver->driver_version) - 1] = '\0';
	host_wellness_driver_ver->end_tag[0] = 'Z';
	host_wellness_driver_ver->end_tag[1] = 'Z';

	rval = FUNC7(softs, &request, host_wellness_driver_ver,data_length,
					BMIC_WRITE_HOST_WELLNESS, 0, (uint8_t *)RAID_CTLR_LUNID, NULL);

	FUNC6(softs, (char *)host_wellness_driver_ver, data_length);
	
	FUNC2("OUT");
	return rval;
}
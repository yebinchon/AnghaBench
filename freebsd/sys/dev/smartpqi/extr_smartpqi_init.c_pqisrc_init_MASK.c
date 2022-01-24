#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int devlist_lockcreated; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  devlist_lock; int /*<<< orphan*/ *** device_list; scalar_t__ prev_heartbeat_count; int /*<<< orphan*/  num_intrs; int /*<<< orphan*/  prev_num_intrs; int /*<<< orphan*/  devlist_lock_name; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  LOCKNAME_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ OS_FW_HEARTBEAT_TIMER_INTERVAL ; 
 int PQI_MAX_DEVICES ; 
 int PQI_MAX_MULTILUN ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  num_intrs ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*) ; 
 int FUNC19 (TYPE_1__*) ; 
 int FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int FUNC22 (TYPE_1__*) ; 

int FUNC23(pqisrc_softstate_t *softs)
{
	int ret = 0;
	int i = 0, j = 0;

	FUNC2("IN\n");
    
	FUNC5();
    
	/* Init the Sync interface */
	ret = FUNC20(softs);
	if (ret) {
		FUNC1("SIS Init failed with error %d\n", ret);
		goto err_out;
	}

	ret = FUNC6("scan_lock", 1, &softs->scan_lock);
	if(ret != PQI_STATUS_SUCCESS){
		FUNC1(" Failed to initialize scan lock\n");
		goto err_scan_lock;
	}

	/* Init the PQI interface */
	ret = FUNC15(softs);
	if (ret) {
		FUNC1("PQI Init failed with error %d\n", ret);
		goto err_pqi;
	}

	/* Setup interrupt */
	ret = FUNC10(softs);
	if (ret) {
		FUNC1("Interrupt setup failed with error %d\n", ret);
		goto err_intr;
	}

	/* Report event configuration */
        ret = FUNC18(softs);
        if(ret){
                FUNC1(" Failed to configure Report events\n");
		goto err_event;
	}
	 
	/* Set event configuration*/
        ret = FUNC19(softs);
        if(ret){
                FUNC1(" Failed to configure Set events\n");
                goto err_event;
        }

	/* Check for For PQI spanning */
	ret = FUNC13(softs);
        if(ret){
                FUNC1(" Failed to get ctrl fw version\n");
		goto err_fw_version;
        }

	/* update driver version in to FW */
	ret = FUNC22(softs);
	if (ret) {
		FUNC1(" Failed to update driver version in to FW");
		goto err_host_wellness;
	}

    
	FUNC11(softs->devlist_lock_name, "devlist_lock", LOCKNAME_SIZE);
	ret = FUNC9(softs, &softs->devlist_lock, softs->devlist_lock_name);
	if(ret){
		FUNC1(" Failed to initialize devlist_lock\n");
		softs->devlist_lockcreated=false;
		goto err_lock;
	}
	softs->devlist_lockcreated = true;
	
	FUNC3(softs, num_intrs, 0);
	softs->prev_num_intrs = softs->num_intrs;


	/* Get the PQI configuration table to read heart-beat counter*/
	if (FUNC4(softs)) {
		ret = FUNC17(softs);
		if (ret) {
			FUNC1("Failed to process PQI configuration table %d\n", ret);
			goto err_config_tab;
		}
	}

	if (FUNC4(softs))
		softs->prev_heartbeat_count = FUNC0(softs) - OS_FW_HEARTBEAT_TIMER_INTERVAL;
	
	/* Init device list */
	for(i = 0; i < PQI_MAX_DEVICES; i++)
		for(j = 0; j < PQI_MAX_MULTILUN; j++)
			softs->device_list[i][j] = NULL;

	FUNC14(softs);

	FUNC2("OUT\n");
	return ret;

err_config_tab:
	if(softs->devlist_lockcreated==true){    
		FUNC12(&softs->devlist_lock);
		softs->devlist_lockcreated = false;
	}	
err_lock:
err_fw_version:
err_event:
err_host_wellness:
	FUNC7(softs);
err_intr:
	FUNC16(softs);
err_pqi:
	FUNC8(&softs->scan_lock);
err_scan_lock:
	FUNC21(softs);
err_out:
	FUNC2("OUT failed\n");
	return ret;
}
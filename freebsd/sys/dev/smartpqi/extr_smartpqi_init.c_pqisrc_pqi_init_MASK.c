#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int ctrl_in_pqi_mode; scalar_t__ intr_type; int ctrl_online; scalar_t__ max_outstanding_io; int /*<<< orphan*/  taglist; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_PQI_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ INTR_TYPE_FIXED ; 
 scalar_t__ INTR_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

int FUNC17(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;

	FUNC1("IN\n");

	/* Check the PQI signature */
	ret = FUNC7(softs);
	if(ret) {
		FUNC0("failed to switch to pqi\n");
                goto err_out;
	}

	FUNC2(softs, CTRL_PQI_MODE);
	softs->ctrl_in_pqi_mode = true;
	
	/* Get the No. of Online CPUs,NUMA/Processor config from OS */
	ret = FUNC5(softs);
	if (ret) {
		FUNC0("Failed to get processor config from OS %d\n",
			ret);
		goto err_out;
	}
	
	softs->intr_type = INTR_TYPE_NONE;	

	/* Get the interrupt count, type, priority available from OS */
	ret = FUNC4(softs);
	if (ret) {
		FUNC0("Failed to get interrupt config from OS %d\n",
			ret);
		goto err_out;
	}

	/*Enable/Set Legacy INTx Interrupt mask clear pqi register,
	 *if allocated interrupt is legacy type.
	 */
	if (INTR_TYPE_FIXED == softs->intr_type) {
		FUNC8(softs, true);
		FUNC16(softs);
	}

	/* Create Admin Queue pair*/		
	ret = FUNC10(softs);
	if(ret) {
                FUNC0("Failed to configure admin queue\n");
                goto err_admin_queue;
    	}

	/* For creating event and IO operational queues we have to submit 
	   admin IU requests.So Allocate resources for submitting IUs */  
	     
	/* Allocate the request container block (rcb) */
	ret = FUNC6(softs);
	if (ret == PQI_STATUS_FAILURE) {
                FUNC0("Failed to allocate rcb \n");
                goto err_rcb;
    	}

	/* Allocate & initialize request id queue */
	ret = FUNC15(softs,&softs->taglist,
				softs->max_outstanding_io);
	if (ret) {
		FUNC0("Failed to allocate memory for request id q : %d\n",
			ret);
		goto err_taglist;
	}

	ret = FUNC9(softs);
	if (ret) {
			FUNC0("Failed to configure op queue\n");
			goto err_config_opq;
	}

	/* Create Operational queues */
	ret = FUNC11(softs);
	if(ret) {
                FUNC0("Failed to create op queue\n");
                ret = PQI_STATUS_FAILURE;
                goto err_create_opq;
        }

	softs->ctrl_online = true;

	FUNC1("OUT\n");
	return ret;

err_create_opq:
err_config_opq:
	FUNC13(softs,&softs->taglist);
err_taglist:
	FUNC14(softs, softs->max_outstanding_io + 1);		
err_rcb:
	FUNC12(softs);
err_admin_queue:
	FUNC3(softs);
err_out:
	FUNC1("OUT failed\n");
	return PQI_STATUS_FAILURE;
}
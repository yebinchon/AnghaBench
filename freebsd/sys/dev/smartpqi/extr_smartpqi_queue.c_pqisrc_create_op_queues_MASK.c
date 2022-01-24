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
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;

	FUNC0("IN\n");
		
	/* Create Operational IB queues */
	ret = FUNC2(softs);
	if (ret)
		goto err_out;
	/* Create Operational OB queues */
	ret = FUNC3(softs);
	if (ret)
		goto err_out_obq;

	/* Create Event queue */
	ret = FUNC1(softs);
	if (ret)
		goto err_out_eventq;		

	FUNC0("OUT\n");
	return ret;
err_out_eventq:
	FUNC5(softs);	
err_out_obq:
	FUNC4(softs);
err_out:
	FUNC0("OUT failed %d\n", ret);
	return PQI_STATUS_FAILURE;
}
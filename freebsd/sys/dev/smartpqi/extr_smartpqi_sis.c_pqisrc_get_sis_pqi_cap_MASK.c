#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_5__ {void* max_outstanding_io; void* max_transfer_size; void* max_sg_elem; void* conf_tab_sz; void* conf_tab_off; } ;
struct TYPE_6__ {TYPE_1__ pqi_cap; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int PQI_STATUS_SUCCESS ; 
 void* SIS_CMD_GET_PQI_CAPABILITIES ; 
 int FUNC2 (TYPE_2__*,void**) ; 

int FUNC3(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	uint32_t mb[6] = {0};

	FUNC0("IN\n");

	mb[0] = SIS_CMD_GET_PQI_CAPABILITIES;
	ret = FUNC2(softs,  mb);
	if (!ret) {
		softs->pqi_cap.max_sg_elem = mb[1];
		softs->pqi_cap.max_transfer_size = mb[2];
		softs->pqi_cap.max_outstanding_io = mb[3];
		softs->pqi_cap.conf_tab_off = mb[4];
		softs->pqi_cap.conf_tab_sz =  mb[5];

		FUNC1("max_sg_elem = %x\n",
					softs->pqi_cap.max_sg_elem);
		FUNC1("max_transfer_size = %x\n",
					softs->pqi_cap.max_transfer_size);
		FUNC1("max_outstanding_io = %x\n",
					softs->pqi_cap.max_outstanding_io);
	}

	FUNC0("OUT\n");
	return ret;
}
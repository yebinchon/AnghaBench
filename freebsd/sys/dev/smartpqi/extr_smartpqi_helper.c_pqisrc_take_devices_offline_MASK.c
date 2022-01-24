#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ *** device_list; } ;
typedef  TYPE_1__ pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqi_scsi_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PQI_MAX_DEVICES ; 
 int PQI_MAX_MULTILUN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC2(pqisrc_softstate_t *softs)
{
	pqi_scsi_dev_t *device = NULL;
	int i,j;

	FUNC0("IN\n");
	for(i = 0; i < PQI_MAX_DEVICES; i++) {
		for(j = 0; j < PQI_MAX_MULTILUN; j++) {
			if(softs->device_list[i][j] == NULL)
				continue;
			device = softs->device_list[i][j];
			FUNC1(softs, device);
		}
	}

	FUNC0("OUT\n");
}
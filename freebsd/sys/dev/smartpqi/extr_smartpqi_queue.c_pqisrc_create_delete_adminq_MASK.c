#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* pqi_reg; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_6__ {int /*<<< orphan*/  admin_q_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PQISRC_ADMIN_QUEUE_CREATE_TIMEOUT ; 
 int PQISRC_ADMIN_QUEUE_DELETE_TIMEOUT ; 
 int /*<<< orphan*/  PQI_ADMINQ_CONFIG ; 
 scalar_t__ PQI_ADMIN_QUEUE_CONF_FUNC_CREATE_Q_PAIR ; 
 scalar_t__ PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE ; 
 int PQI_STATUS_SUCCESS ; 
 int PQI_STATUS_TIMEOUT ; 

int FUNC5(pqisrc_softstate_t *softs,
					uint32_t cmd)
{
	int tmo = 0;
	int ret = PQI_STATUS_SUCCESS;

	/* Create Admin Q pair writing to Admin Q config function reg */

	FUNC4(softs, &softs->pqi_reg->admin_q_config, PQI_ADMINQ_CONFIG, FUNC2(cmd));
        
	if (cmd == PQI_ADMIN_QUEUE_CONF_FUNC_CREATE_Q_PAIR)
		tmo = PQISRC_ADMIN_QUEUE_CREATE_TIMEOUT;
	else
		tmo = PQISRC_ADMIN_QUEUE_DELETE_TIMEOUT;
	
	/* Wait for completion */
	FUNC0((FUNC3(softs, &softs->pqi_reg->admin_q_config, PQI_ADMINQ_CONFIG) ==
				PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE), tmo);
	if (tmo <= 0) {
		FUNC1("Unable to create/delete admin queue pair\n");
		ret = PQI_STATUS_TIMEOUT;
	}

	return ret;
}
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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_req_t ;
struct TYPE_4__ {int halt_event; } ;
typedef  TYPE_1__ pqisrc_bmic_flush_cache_t ;
typedef  enum pqisrc_flush_cache_event_type { ____Placeholder_pqisrc_flush_cache_event_type } pqisrc_flush_cache_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 scalar_t__ RAID_CTLR_LUNID ; 
 int /*<<< orphan*/  SA_CACHE_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7( pqisrc_softstate_t *softs,
			enum pqisrc_flush_cache_event_type event_type)
{
	int rval = PQI_STATUS_SUCCESS;
	pqisrc_raid_req_t request;
	pqisrc_bmic_flush_cache_t *flush_buff = NULL;

	FUNC1("IN\n");

	if (FUNC6(softs))
		return PQI_STATUS_FAILURE;

	flush_buff = FUNC3(softs, sizeof(pqisrc_bmic_flush_cache_t)); 
	if (!flush_buff) {
		FUNC0("Failed to allocate memory for flush cache params\n");
		rval = PQI_STATUS_FAILURE;
		return rval;
	}

	flush_buff->halt_event = event_type;

	FUNC2(&request, 0, sizeof(request));

	rval = FUNC5(softs, &request, flush_buff,
			sizeof(*flush_buff), SA_CACHE_FLUSH, 0,
			(uint8_t *)RAID_CTLR_LUNID, NULL);
	if (rval) {
		FUNC0("error in build send raid req ret=%d\n", rval);
	}

	if (flush_buff)
		FUNC4(softs, (void *)flush_buff,
			sizeof(pqisrc_bmic_flush_cache_t));

	FUNC1("OUT\n");

	return rval;
}
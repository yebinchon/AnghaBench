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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  raid_path_error_info_elem_t ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;
typedef  int /*<<< orphan*/  pqisrc_raid_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  SA_INQUIRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(pqisrc_softstate_t *softs,
	uint8_t *scsi3addr, uint16_t vpd_page, uint8_t *buff, int buf_len)
{
	int ret = PQI_STATUS_SUCCESS;
	pqisrc_raid_req_t request;
	raid_path_error_info_elem_t error_info;

	FUNC0("IN\n");

	FUNC1(&request, 0, sizeof(request));
	ret =  FUNC2(softs, &request, buff, buf_len, 
								SA_INQUIRY, vpd_page, scsi3addr, &error_info);

	FUNC0("OUT\n");
	return ret;
}
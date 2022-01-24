#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  reportlun_header_t ;
typedef  int /*<<< orphan*/  reportlun_ext_entry_t ;
struct TYPE_9__ {size_t list_length; } ;
struct TYPE_10__ {TYPE_1__ header; } ;
typedef  TYPE_2__ reportlun_data_ext_t ;
typedef  int /*<<< orphan*/  report_lun_header ;
typedef  int /*<<< orphan*/  pqisrc_softstate_t ;

/* Variables and functions */
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int /*<<< orphan*/  SA_REPORT_LOG ; 
 int /*<<< orphan*/  SA_REPORT_PHYS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,size_t*) ; 

__attribute__((used)) static int FUNC8(pqisrc_softstate_t *softs,
	reportlun_data_ext_t **physical_dev_list,
	reportlun_data_ext_t **logical_dev_list, 
	size_t *phys_data_length,
	size_t *log_data_length)
{
	int ret = PQI_STATUS_SUCCESS;
	size_t logical_list_length;
	size_t logdev_data_length;
	size_t data_length;
	reportlun_data_ext_t *local_logdev_list;
	reportlun_data_ext_t *logdev_data;
	reportlun_header_t report_lun_header;
	

	FUNC2("IN\n");

	ret = FUNC7(softs, SA_REPORT_PHYS, physical_dev_list, phys_data_length);
	if (ret) {
		FUNC1("report physical LUNs failed");
		return ret;
	}

	ret = FUNC7(softs, SA_REPORT_LOG, logical_dev_list, log_data_length);
	if (ret) {
		FUNC1("report logical LUNs failed");
		return ret;
	}


	logdev_data = *logical_dev_list;

	if (logdev_data) {
		logical_list_length =
			FUNC0(logdev_data->header.list_length);
	} else {
		FUNC4(&report_lun_header, 0, sizeof(report_lun_header));
		logdev_data =
			(reportlun_data_ext_t *)&report_lun_header;
		logical_list_length = 0;
	}

	logdev_data_length = sizeof(reportlun_header_t) +
		logical_list_length;

	/* Adding LOGICAL device entry for controller */
	local_logdev_list = FUNC5(softs,
					    logdev_data_length + sizeof(reportlun_ext_entry_t));
	if (!local_logdev_list) {
		data_length = *log_data_length;
		FUNC6(softs, (char *)*logical_dev_list, data_length);
		*logical_dev_list = NULL;
		return PQI_STATUS_FAILURE;
	}

	FUNC3(local_logdev_list, logdev_data, logdev_data_length);
	FUNC4((uint8_t *)local_logdev_list + logdev_data_length, 0,
		sizeof(reportlun_ext_entry_t));
	local_logdev_list->header.list_length = FUNC0(logical_list_length +
							sizeof(reportlun_ext_entry_t));
	data_length = *log_data_length;
	FUNC6(softs, (char *)*logical_dev_list, data_length);
	*log_data_length = logdev_data_length + sizeof(reportlun_ext_entry_t);
	*logical_dev_list = local_logdev_list;

	FUNC2("OUT\n");

	return ret;
}
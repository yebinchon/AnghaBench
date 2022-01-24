#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_3__ {int running; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  semaphore; int /*<<< orphan*/  page_data; int /*<<< orphan*/  bytes_read; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ ocs_mgmt_sfp_result_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SFP_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *os, int32_t status, uint32_t bytes_read, uint32_t *data, void *arg)
{
	ocs_mgmt_sfp_result_t *result = arg;
	ocs_t *ocs = os;

	FUNC1(&(result->cb_lock));
	result->running++;
	if(result->running == 2) {
		/* get_sfp() has timed out */
		FUNC4(&(result->cb_lock));
		FUNC0(ocs, result, sizeof(ocs_mgmt_sfp_result_t));
		return;
	}

	result->status = status;
	result->bytes_read = bytes_read;
	FUNC2(&result->page_data, data, SFP_PAGE_SIZE);

	FUNC3(&(result->semaphore));
	FUNC4(&(result->cb_lock));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  semaphore; int /*<<< orphan*/  active_profile_id; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ ocs_mgmt_get_active_profile_result_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(int32_t status, uint32_t active_profile, void *ul_arg)
{
	ocs_mgmt_get_active_profile_result_t *result = ul_arg;

	result->status = status;
	result->active_profile_id = active_profile;

	FUNC0(&(result->semaphore));
}
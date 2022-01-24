#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {TYPE_6__ hw; } ;
typedef  TYPE_1__ ocs_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_HW_RESET_FIRMWARE ; 
 scalar_t__ OCS_HW_STATE_QUEUES_ALLOCATED ; 
 scalar_t__ OCS_HW_STATE_UNINITIALIZED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

__attribute__((used)) static int32_t
FUNC8(ocs_t *ocs, char *name, void *buf, uint32_t buf_len, void *arg_out, uint32_t arg_out_length)
{
	int rc = 0;
	int index = 0;
	uint8_t bus, dev, func;
	ocs_t *other_ocs;

	FUNC2(ocs, &bus, &dev, &func);

	FUNC5(ocs, "Resetting port\n");
	if (FUNC4(&ocs->hw, OCS_HW_RESET_FIRMWARE)) {
		FUNC7(ocs, "failed to reset port\n");
		rc = -1;
	} else {
		FUNC5(ocs, "successfully reset port\n");

		/* now reset all functions on the same device */

		while ((other_ocs = FUNC3(index++)) != NULL) {
			uint8_t other_bus, other_dev, other_func;

			FUNC2(other_ocs, &other_bus, &other_dev, &other_func);

			if ((bus == other_bus) && (dev == other_dev)) {
				if (other_ocs->hw.state !=
                                      OCS_HW_STATE_UNINITIALIZED) {
                                        other_ocs->hw.state =
                                                OCS_HW_STATE_QUEUES_ALLOCATED;
                                }

				FUNC1(other_ocs);
				if (FUNC0(other_ocs)) {
					FUNC6(other_ocs,
						"device %d attach failed \n", index);
					rc = -1;
				}
			}
		}
	}
	return rc;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ sli4_queue_t ;
struct TYPE_8__ {int /*<<< orphan*/  sli; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC2(ocs_hw_t *hw, int32_t status, sli4_queue_t *mq)
{
	uint8_t		mqe[SLI4_BMBX_SIZE];

	if (!FUNC1(&hw->sli, mq, mqe)) {
		FUNC0(hw, status, mqe, mq->size);
	}

	return 0;
}
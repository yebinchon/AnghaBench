#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  qla_sp_log_entry_t ;
struct TYPE_4__ {scalar_t__ sp_log_num_entries; scalar_t__ sp_log_index; int /*<<< orphan*/ * sp_log; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_QLA83XXBUF ; 
 int NUM_LOG_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(qla_host_t *ha)
{
	uint32_t size;

	size = (sizeof(qla_sp_log_entry_t)) * NUM_LOG_ENTRIES;

	ha->hw.sp_log =  FUNC1(size, M_QLA83XXBUF, M_NOWAIT);	

	if (ha->hw.sp_log != NULL)
		FUNC0(ha->hw.sp_log, size);

	ha->hw.sp_log_index = 0;
	ha->hw.sp_log_num_entries = 0;

	return;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* epoch_t ;
struct TYPE_5__ {size_t e_idx; int /*<<< orphan*/  e_drain_sx; int /*<<< orphan*/  e_drain_mtx; int /*<<< orphan*/  e_pcpu_record; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_EPOCH ; 
 int /*<<< orphan*/ ** allepochs ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  global_epoch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcpu_zone_record ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(epoch_t epoch)
{

	FUNC0(epoch);
	allepochs[epoch->e_idx] = NULL;
	FUNC1(global_epoch);
	FUNC5(pcpu_zone_record, epoch->e_pcpu_record);
	FUNC3(&epoch->e_drain_mtx);
	FUNC4(&epoch->e_drain_sx);
	FUNC2(epoch, M_EPOCH);
}
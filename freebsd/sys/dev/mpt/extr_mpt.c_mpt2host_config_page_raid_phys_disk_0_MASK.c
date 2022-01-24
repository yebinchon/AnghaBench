#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  SmartCount; int /*<<< orphan*/  ErrorCount; int /*<<< orphan*/  Reserved; } ;
struct TYPE_3__ {int /*<<< orphan*/  Reserved; } ;
typedef  int /*<<< orphan*/  CONFIG_PAGE_RAID_PHYS_DISK_0 ;

/* Variables and functions */
 TYPE_2__ ErrorData ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MaxLBA ; 
 TYPE_1__ PhysDiskStatus ; 
 int /*<<< orphan*/  Reserved1 ; 

void
FUNC2(CONFIG_PAGE_RAID_PHYS_DISK_0 *rpd0)
{

	FUNC1(rpd0, Reserved1);
	FUNC0(rpd0, PhysDiskStatus.Reserved);
	FUNC1(rpd0, MaxLBA);
	FUNC0(rpd0, ErrorData.Reserved);
	FUNC0(rpd0, ErrorData.ErrorCount);
	FUNC0(rpd0, ErrorData.SmartCount);
}
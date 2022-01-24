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
typedef  scalar_t__ u_int32_t ;
struct TYPE_3__ {scalar_t__ logicalBlockLength; } ;
typedef  TYPE_1__ MR_LD_RAID ;
typedef  int /*<<< orphan*/  MR_DRV_RAID_MAP_ALL ;

/* Variables and functions */
 scalar_t__ MAX_LOGICAL_DRIVES ; 
 scalar_t__ MRSAS_SCSIBLOCKSIZE ; 
 TYPE_1__* FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

u_int32_t
FUNC2(u_int32_t ldTgtId, MR_DRV_RAID_MAP_ALL * map)
{
	MR_LD_RAID *raid;
	u_int32_t ld, ldBlockSize = MRSAS_SCSIBLOCKSIZE;

	ld = FUNC1(ldTgtId, map);

	/*
	 * Check if logical drive was removed.
	 */
	if (ld >= MAX_LOGICAL_DRIVES)
		return ldBlockSize;

	raid = FUNC0(ld, map);
	ldBlockSize = raid->logicalBlockLength;
	if (!ldBlockSize)
		ldBlockSize = MRSAS_SCSIBLOCKSIZE;

	return ldBlockSize;
}
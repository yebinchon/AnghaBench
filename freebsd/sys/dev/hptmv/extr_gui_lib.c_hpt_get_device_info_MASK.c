#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  device; int /*<<< orphan*/  array; } ;
struct TYPE_16__ {TYPE_3__ u; int /*<<< orphan*/  Capacity; void* ParentArray; int /*<<< orphan*/  Type; } ;
struct TYPE_12__ {int /*<<< orphan*/  dDeRealCapacity; } ;
struct TYPE_13__ {TYPE_1__ disk; } ;
struct TYPE_15__ {TYPE_2__ u; scalar_t__ pParent; int /*<<< orphan*/  VDeviceCapacity; } ;
typedef  TYPE_4__* PVDevice ;
typedef  TYPE_5__* PLOGICAL_DEVICE_INFO ;
typedef  scalar_t__ DEVICEID ;

/* Variables and functions */
 TYPE_4__* FUNC0 (scalar_t__) ; 
 void* INVALID_DEVICEID ; 
 int /*<<< orphan*/  LDT_ARRAY ; 
 int /*<<< orphan*/  LDT_DEVICE ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 

int FUNC6(DEVICEID id, PLOGICAL_DEVICE_INFO pInfo)
{
	PVDevice pVDevice = FUNC0(id);

	if((id == 0) || FUNC2(pVDevice))
		return -1;

#ifdef SUPPORT_ARRAY
	if (mIsArray(pVDevice)) {
		pInfo->Type = LDT_ARRAY;
		pInfo->Capacity = pVDevice->VDeviceCapacity;
		pInfo->ParentArray = VDEV_TO_ID(pVDevice->pParent);
		get_array_info(pVDevice, &pInfo->u.array);
		return 0;
	}
#endif

	pInfo->Type = LDT_DEVICE;
	pInfo->ParentArray = pVDevice->pParent? FUNC1(pVDevice->pParent) : INVALID_DEVICEID;
	/* report real capacity to be compatible with old arrays */
	pInfo->Capacity = pVDevice->u.disk.dDeRealCapacity;
	return FUNC4(pVDevice, &pInfo->u.device);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  param ;
struct TYPE_5__ {int Flags; int nDisk; int /*<<< orphan*/ * Members; } ;
struct TYPE_6__ {TYPE_1__ array; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  PVBUS_EXT ;
typedef  TYPE_3__ LOGICAL_DEVICE_INFO_V3 ;
typedef  int /*<<< orphan*/  DEVICEID ;

/* Variables and functions */
 int ARRAY_FLAG_INITIALIZING ; 
 int ARRAY_FLAG_REBUILDING ; 
 int ARRAY_FLAG_TRANSFORMING ; 
 int ARRAY_FLAG_VERIFYING ; 
 int /*<<< orphan*/  AS_INITIALIZE_ABORT ; 
 int /*<<< orphan*/  AS_REBUILD_ABORT ; 
 int /*<<< orphan*/  AS_TRANSFORM_ABORT ; 
 int /*<<< orphan*/  AS_VERIFY_ABORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPT_IOCTL_SET_ARRAY_STATE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ LDT_ARRAY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(PVBUS_EXT vbus_ext, DEVICEID id)
{
	LOGICAL_DEVICE_INFO_V3 devinfo;
	int i, result;
	DEVICEID param[2] = { id, 0 };
	
	if (FUNC3(id, &devinfo))
		return -1;
		
	if (devinfo.Type!=LDT_ARRAY)
		return -1;
		
	if (devinfo.u.array.Flags & ARRAY_FLAG_REBUILDING)
		param[1] = AS_REBUILD_ABORT;
	else if (devinfo.u.array.Flags & ARRAY_FLAG_VERIFYING)
		param[1] = AS_VERIFY_ABORT;
	else if (devinfo.u.array.Flags & ARRAY_FLAG_INITIALIZING)
		param[1] = AS_INITIALIZE_ABORT;
	else if (devinfo.u.array.Flags & ARRAY_FLAG_TRANSFORMING)
		param[1] = AS_TRANSFORM_ABORT;
	else
		return -1;

	FUNC2(("SET_ARRAY_STATE(%x, %d)", param[0], param[1]));
	result = FUNC1(HPT_IOCTL_SET_ARRAY_STATE,
				param, sizeof(param), 0, 0);
				
	for (i=0; i<devinfo.u.array.nDisk; i++)
		if (FUNC0(devinfo.u.array.Members[i]))
			FUNC4(vbus_ext, devinfo.u.array.Members[i]);
			
	return result;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int param ;
struct TYPE_5__ {int Flags; int nDisk; int * Members; } ;
struct TYPE_6__ {TYPE_1__ array; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_2__ u; } ;
typedef int PVBUS_EXT ;
typedef TYPE_3__ LOGICAL_DEVICE_INFO_V3 ;
typedef int DEVICEID ;


 int ARRAY_FLAG_INITIALIZING ;
 int ARRAY_FLAG_REBUILDING ;
 int ARRAY_FLAG_TRANSFORMING ;
 int ARRAY_FLAG_VERIFYING ;
 int AS_INITIALIZE_ABORT ;
 int AS_REBUILD_ABORT ;
 int AS_TRANSFORM_ABORT ;
 int AS_VERIFY_ABORT ;
 scalar_t__ DEVICEID_VALID (int ) ;
 int HPT_DO_IOCTL (int ,int *,int,int ,int ) ;
 int HPT_IOCTL_SET_ARRAY_STATE ;
 int KdPrint (char*) ;
 scalar_t__ LDT_ARRAY ;
 scalar_t__ hpt_get_device_info_v3 (int ,TYPE_3__*) ;

__attribute__((used)) static int __hpt_stop_tasks(PVBUS_EXT vbus_ext, DEVICEID id)
{
 LOGICAL_DEVICE_INFO_V3 devinfo;
 int i, result;
 DEVICEID param[2] = { id, 0 };

 if (hpt_get_device_info_v3(id, &devinfo))
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

 KdPrint(("SET_ARRAY_STATE(%x, %d)", param[0], param[1]));
 result = HPT_DO_IOCTL(HPT_IOCTL_SET_ARRAY_STATE,
    param, sizeof(param), 0, 0);

 for (i=0; i<devinfo.u.array.nDisk; i++)
  if (DEVICEID_VALID(devinfo.u.array.Members[i]))
   __hpt_stop_tasks(vbus_ext, devinfo.u.array.Members[i]);

 return result;
}

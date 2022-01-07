
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int device; int array; } ;
struct TYPE_15__ {int lo32; int hi32; } ;
struct TYPE_18__ {TYPE_4__ u; TYPE_3__ Capacity; void* ParentArray; int Type; } ;
struct TYPE_13__ {int dDeRealCapacity; } ;
struct TYPE_14__ {TYPE_1__ disk; } ;
struct TYPE_17__ {int VDeviceCapacity; TYPE_2__ u; scalar_t__ pParent; } ;
typedef TYPE_5__* PVDevice ;
typedef TYPE_6__* PLOGICAL_DEVICE_INFO_V2 ;
typedef int LBA_T ;
typedef scalar_t__ DEVICEID ;


 TYPE_5__* ID_TO_VDEV (scalar_t__) ;
 void* INVALID_DEVICEID ;
 int LDT_ARRAY ;
 int LDT_DEVICE ;
 void* VDEV_TO_ID (scalar_t__) ;
 scalar_t__ check_VDevice_valid (TYPE_5__*) ;
 int get_array_info_v2 (TYPE_5__*,int *) ;
 int get_disk_info (TYPE_5__*,int *) ;
 scalar_t__ mIsArray (TYPE_5__*) ;

int hpt_get_device_info_v2(DEVICEID id, PLOGICAL_DEVICE_INFO_V2 pInfo)
{
 PVDevice pVDevice = ID_TO_VDEV(id);

 if((id == 0) || check_VDevice_valid(pVDevice))
  return -1;
 pInfo->Type = LDT_DEVICE;
 pInfo->ParentArray = pVDevice->pParent? VDEV_TO_ID(pVDevice->pParent) : INVALID_DEVICEID;

 pInfo->Capacity.lo32 = pVDevice->u.disk.dDeRealCapacity;
 pInfo->Capacity.hi32 = 0;
 return get_disk_info(pVDevice, &pInfo->u.device);
}

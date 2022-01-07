
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int device; int array; } ;
struct TYPE_16__ {TYPE_3__ u; int Capacity; void* ParentArray; int Type; } ;
struct TYPE_12__ {int dDeRealCapacity; } ;
struct TYPE_13__ {TYPE_1__ disk; } ;
struct TYPE_15__ {TYPE_2__ u; scalar_t__ pParent; int VDeviceCapacity; } ;
typedef TYPE_4__* PVDevice ;
typedef TYPE_5__* PLOGICAL_DEVICE_INFO ;
typedef scalar_t__ DEVICEID ;


 TYPE_4__* ID_TO_VDEV (scalar_t__) ;
 void* INVALID_DEVICEID ;
 int LDT_ARRAY ;
 int LDT_DEVICE ;
 void* VDEV_TO_ID (scalar_t__) ;
 scalar_t__ check_VDevice_valid (TYPE_4__*) ;
 int get_array_info (TYPE_4__*,int *) ;
 int get_disk_info (TYPE_4__*,int *) ;
 scalar_t__ mIsArray (TYPE_4__*) ;

int hpt_get_device_info(DEVICEID id, PLOGICAL_DEVICE_INFO pInfo)
{
 PVDevice pVDevice = ID_TO_VDEV(id);

 if((id == 0) || check_VDevice_valid(pVDevice))
  return -1;
 pInfo->Type = LDT_DEVICE;
 pInfo->ParentArray = pVDevice->pParent? VDEV_TO_ID(pVDevice->pParent) : INVALID_DEVICEID;

 pInfo->Capacity = pVDevice->u.disk.dDeRealCapacity;
 return get_disk_info(pVDevice, &pInfo->u.device);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwSize; int SupportSparePool; int* SupportedRAIDTypes; int* MaximumArrayMembers; scalar_t__ SupportDedicatedSpare; scalar_t__ MaximumArrayNameLength; scalar_t__ SupportDiskModeSetting; int MaximumBlockSizeShift; int MinimumBlockSizeShift; scalar_t__ SupportCrossControllerRAID; int MaximumControllers; } ;
typedef TYPE_1__* PDRIVER_CAPABILITIES ;
typedef int DRIVER_CAPABILITIES ;


 int AT_JBOD ;
 int AT_RAID0 ;
 int AT_RAID1 ;
 int AT_RAID5 ;
 scalar_t__ MAX_ARRAY_NAME ;
 void* MAX_MEMBERS ;
 int MAX_VBUS ;
 int MaxBlockSizeShift ;
 int MinBlockSizeShift ;
 int ZeroMemory (TYPE_1__*,int) ;

int hpt_get_driver_capabilities(PDRIVER_CAPABILITIES cap)
{
 ZeroMemory(cap, sizeof(DRIVER_CAPABILITIES));
 cap->dwSize = sizeof(DRIVER_CAPABILITIES);
 cap->MaximumControllers = MAX_VBUS;



 cap->SupportCrossControllerRAID = 0;


 cap->MinimumBlockSizeShift = MinBlockSizeShift;
 cap->MaximumBlockSizeShift = MaxBlockSizeShift;
 cap->SupportDiskModeSetting = 0;
 cap->SupportSparePool = 1;
 cap->MaximumArrayNameLength = MAX_ARRAY_NAME - 1;
 cap->SupportDedicatedSpare = 0;
 return 0;
}

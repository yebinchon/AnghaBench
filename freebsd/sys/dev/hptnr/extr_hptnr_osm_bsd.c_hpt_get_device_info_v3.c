
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLOGICAL_DEVICE_INFO_V3 ;
typedef int LOGICAL_DEVICE_INFO_V3 ;
typedef int DEVICEID ;


 int HPT_DO_IOCTL (int ,int *,int,int ,int) ;
 int HPT_IOCTL_GET_DEVICE_INFO_V3 ;

__attribute__((used)) static int hpt_get_device_info_v3(DEVICEID id, PLOGICAL_DEVICE_INFO_V3 pInfo)
{
 return HPT_DO_IOCTL(HPT_IOCTL_GET_DEVICE_INFO_V3,
    &id, sizeof(DEVICEID), pInfo, sizeof(LOGICAL_DEVICE_INFO_V3));
}

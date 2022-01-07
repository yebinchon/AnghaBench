
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPT_U32 ;
typedef scalar_t__ DEVICEID ;


 scalar_t__ HPT_DO_IOCTL (int ,int*,int,scalar_t__*,int) ;
 int HPT_IOCTL_GET_LOGICAL_DEVICES ;

__attribute__((used)) static int hpt_get_logical_devices(DEVICEID * pIds, int nMaxCount)
{
 int i;
 HPT_U32 count = nMaxCount-1;

 if (HPT_DO_IOCTL(HPT_IOCTL_GET_LOGICAL_DEVICES,
   &count, sizeof(HPT_U32), pIds, sizeof(DEVICEID)*nMaxCount))
  return -1;

 nMaxCount = (int)pIds[0];
 for (i=0; i<nMaxCount; i++) pIds[i] = pIds[i+1];
 return nMaxCount;
}

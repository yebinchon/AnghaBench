
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_13__ {int df_on_line; } ;
struct TYPE_8__ {TYPE_7__ disk; } ;
struct TYPE_12__ {scalar_t__ VDeviceType; int bSerialNumber; int VDeviceCapacity; TYPE_4__* pParent; TYPE_1__ u; } ;
struct TYPE_9__ {int CriticalMembers; int ArrayName; } ;
struct TYPE_10__ {TYPE_2__ array; } ;
struct TYPE_11__ {TYPE_3__ u; } ;
typedef TYPE_5__* PVDevice ;
typedef int HPT_GET_INFO ;


 int MAX_ARRAY_NAME ;
 scalar_t__ VD_SPARE ;
 int get_disk_name (char*,TYPE_7__*) ;
 int hpt_copy_info (int *,char*,scalar_t__,char*,int,char*,char*) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static void
hpt_copy_disk_info(HPT_GET_INFO *pinfo, PVDevice pVDev, UINT iChan)
{
 char name[32], arrayname[16], *status;

 get_disk_name(name, &pVDev->u.disk);

 if (!pVDev->u.disk.df_on_line)
  status = "Disabled";
 else if (pVDev->VDeviceType==VD_SPARE)
  status = "Spare   ";
 else
  status = "Normal  ";
  arrayname[0]=0;

 hpt_copy_info(pinfo, "Channel %d  %s  %5dMB  %s %s\n",
  iChan+1,
  name, pVDev->VDeviceCapacity>>11, status, arrayname);
}

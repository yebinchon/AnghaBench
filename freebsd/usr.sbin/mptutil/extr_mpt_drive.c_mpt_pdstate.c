
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int State; int Flags; } ;
struct TYPE_5__ {int HotSparePool; } ;
struct TYPE_7__ {TYPE_2__ PhysDiskStatus; TYPE_1__ PhysDiskSettings; } ;
typedef TYPE_3__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;




 int MPI_PHYSDISK0_STATUS_FLAG_OUT_OF_SYNC ;






 int sprintf (char*,char*,int) ;

const char *
mpt_pdstate(CONFIG_PAGE_RAID_PHYS_DISK_0 *info)
{
 static char buf[16];

 switch (info->PhysDiskStatus.State) {
 case 129:
  if ((info->PhysDiskStatus.Flags &
      MPI_PHYSDISK0_STATUS_FLAG_OUT_OF_SYNC) &&
      info->PhysDiskSettings.HotSparePool == 0)
   return ("REBUILD");
  else
   return ("ONLINE");
 case 132:
  return ("MISSING");
 case 131:
  return ("NOT COMPATIBLE");
 case 135:
  return ("FAILED");
 case 133:
  return ("INITIALIZING");
 case 130:
  return ("OFFLINE REQUESTED");
 case 134:
  return ("FAILED REQUESTED");
 case 128:
  return ("OTHER OFFLINE");
 default:
  sprintf(buf, "PSTATE 0x%02x", info->PhysDiskStatus.State);
  return (buf);
 }
}

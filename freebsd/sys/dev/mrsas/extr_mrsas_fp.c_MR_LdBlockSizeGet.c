
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_3__ {scalar_t__ logicalBlockLength; } ;
typedef TYPE_1__ MR_LD_RAID ;
typedef int MR_DRV_RAID_MAP_ALL ;


 scalar_t__ MAX_LOGICAL_DRIVES ;
 scalar_t__ MRSAS_SCSIBLOCKSIZE ;
 TYPE_1__* MR_LdRaidGet (scalar_t__,int *) ;
 scalar_t__ MR_TargetIdToLdGet (scalar_t__,int *) ;

u_int32_t
MR_LdBlockSizeGet(u_int32_t ldTgtId, MR_DRV_RAID_MAP_ALL * map)
{
 MR_LD_RAID *raid;
 u_int32_t ld, ldBlockSize = MRSAS_SCSIBLOCKSIZE;

 ld = MR_TargetIdToLdGet(ldTgtId, map);




 if (ld >= MAX_LOGICAL_DRIVES)
  return ldBlockSize;

 raid = MR_LdRaidGet(ld, map);
 ldBlockSize = raid->logicalBlockLength;
 if (!ldBlockSize)
  ldBlockSize = MRSAS_SCSIBLOCKSIZE;

 return ldBlockSize;
}

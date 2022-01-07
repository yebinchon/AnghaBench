
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef size_t u_int32_t ;
struct TYPE_4__ {int * ldTgtIdToLd; } ;
struct TYPE_5__ {TYPE_1__ raidMap; } ;
typedef TYPE_2__ MR_DRV_RAID_MAP_ALL ;



u_int8_t
MR_TargetIdToLdGet(u_int32_t ldTgtId, MR_DRV_RAID_MAP_ALL * map)
{
 return map->raidMap.ldTgtIdToLd[ldTgtId];
}

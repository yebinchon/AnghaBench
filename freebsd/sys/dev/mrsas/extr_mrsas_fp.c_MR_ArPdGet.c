
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int32_t ;
typedef int u_int16_t ;
struct TYPE_6__ {TYPE_1__* arMapInfo; } ;
struct TYPE_7__ {TYPE_2__ raidMap; } ;
struct TYPE_5__ {int * pd; } ;
typedef TYPE_3__ MR_DRV_RAID_MAP_ALL ;



__attribute__((used)) static u_int16_t
MR_ArPdGet(u_int32_t ar, u_int32_t arm, MR_DRV_RAID_MAP_ALL * map)
{
 return map->raidMap.arMapInfo[ar].pd[arm];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_int32_t ;
typedef int u_int16_t ;
struct TYPE_8__ {TYPE_2__* ldSpanMap; } ;
struct TYPE_9__ {TYPE_3__ raidMap; } ;
struct TYPE_6__ {int targetId; } ;
struct TYPE_7__ {TYPE_1__ ldRaid; } ;
typedef TYPE_4__ MR_DRV_RAID_MAP_ALL ;



u_int16_t
MR_GetLDTgtId(u_int32_t ld, MR_DRV_RAID_MAP_ALL * map)
{
 return (map->raidMap.ldSpanMap[ld].ldRaid.targetId);
}

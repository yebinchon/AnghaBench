
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct mrsas_softc {int dummy; } ;
struct TYPE_3__ {int level; } ;
typedef TYPE_1__ MR_LD_RAID ;
typedef int MR_DRV_RAID_MAP_ALL ;


 TYPE_1__* MR_LdRaidGet (int,int *) ;
 int SPAN_ROW_SIZE (int *,int,int) ;
 int get_arm_from_strip (struct mrsas_softc*,int,int ,int *) ;
 int mega_mod64 (int ,int ) ;

u_int8_t
get_arm(struct mrsas_softc *sc, u_int32_t ld, u_int8_t span, u_int64_t stripe,
    MR_DRV_RAID_MAP_ALL * map)
{
 MR_LD_RAID *raid = MR_LdRaidGet(ld, map);


 u_int32_t arm = 0;

 switch (raid->level) {
 case 0:
 case 5:
 case 6:
  arm = mega_mod64(stripe, SPAN_ROW_SIZE(map, ld, span));
  break;
 case 1:

  arm = get_arm_from_strip(sc, ld, stripe, map);
  arm *= 2;
  break;
 }

 return arm;
}

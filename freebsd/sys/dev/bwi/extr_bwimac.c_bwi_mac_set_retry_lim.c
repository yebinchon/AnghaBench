
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_retry_lim {int lgretry_fb; int shretry_fb; int lgretry; int shretry; } ;
struct bwi_mac {int dummy; } ;


 int BWI_80211_MOBJ ;
 int BWI_80211_MOBJ_LGRETRY ;
 int BWI_80211_MOBJ_SHRETRY ;
 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_LGRETEY_FB ;
 int BWI_COMM_MOBJ_SHRETRY_FB ;
 int MOBJ_WRITE_2 (struct bwi_mac*,int ,int ,int ) ;

__attribute__((used)) static void
bwi_mac_set_retry_lim(struct bwi_mac *mac, const struct bwi_retry_lim *lim)
{

 MOBJ_WRITE_2(mac, BWI_80211_MOBJ, BWI_80211_MOBJ_SHRETRY,
       lim->shretry);
 MOBJ_WRITE_2(mac, BWI_80211_MOBJ, BWI_80211_MOBJ_LGRETRY,
       lim->lgretry);


 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_SHRETRY_FB,
       lim->shretry_fb);
 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_LGRETEY_FB,
       lim->lgretry_fb);
}

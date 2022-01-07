
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ phy_mode; } ;
struct bwi_mac {int mac_sc; TYPE_1__ mac_phy; } ;


 int BWI_COMM_MOBJ ;
 int BWI_COMM_MOBJ_SLOTTIME ;
 int BWI_MAC_SLOTTIME ;
 scalar_t__ BWI_MAC_SLOTTIME_ADJUST ;
 int CSR_WRITE_2 (int ,int ,scalar_t__) ;
 scalar_t__ IEEE80211_DUR_SHSLOT ;
 scalar_t__ IEEE80211_DUR_SLOT ;
 scalar_t__ IEEE80211_MODE_11B ;
 int MOBJ_WRITE_2 (struct bwi_mac*,int ,int ,scalar_t__) ;

void
bwi_mac_updateslot(struct bwi_mac *mac, int shslot)
{
 uint16_t slot_time;

 if (mac->mac_phy.phy_mode == IEEE80211_MODE_11B)
  return;

 if (shslot)
  slot_time = IEEE80211_DUR_SHSLOT;
 else
  slot_time = IEEE80211_DUR_SLOT;

 CSR_WRITE_2(mac->mac_sc, BWI_MAC_SLOTTIME,
      slot_time + BWI_MAC_SLOTTIME_ADJUST);
 MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_SLOTTIME, slot_time);
}

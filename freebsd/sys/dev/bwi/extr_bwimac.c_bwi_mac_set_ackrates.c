
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211_rateset {int rs_nrates; int* rs_rates; } ;
struct ieee80211_rate_table {int dummy; } ;
struct bwi_mac {int dummy; } ;
typedef enum ieee80211_phytype { ____Placeholder_ieee80211_phytype } ieee80211_phytype ;


 int BWI_COMM_MOBJ ;
 int IEEE80211_RATE_VAL ;


 int MOBJ_READ_2 (struct bwi_mac*,int ,int) ;
 int MOBJ_WRITE_2 (struct bwi_mac*,int ,int,int ) ;
 int ieee80211_rate2phytype (struct ieee80211_rate_table const*,int) ;
 int ieee80211_rate2plcp (int,int) ;
 int panic (char*,int) ;

__attribute__((used)) static void
bwi_mac_set_ackrates(struct bwi_mac *mac, const struct ieee80211_rate_table *rt,
 const struct ieee80211_rateset *rs)
{
 int i;


 for (i = 0; i < rs->rs_nrates; ++i) {
  enum ieee80211_phytype modtype;
  uint16_t ofs;

  modtype = ieee80211_rate2phytype(rt,
      rs->rs_rates[i] & IEEE80211_RATE_VAL);
  switch (modtype) {
  case 129:
   ofs = 0x4c0;
   break;
  case 128:
   ofs = 0x480;
   break;
  default:
   panic("unsupported modtype %u\n", modtype);
  }
  ofs += 2*(ieee80211_rate2plcp(
      rs->rs_rates[i] & IEEE80211_RATE_VAL,
      modtype) & 0xf);

  MOBJ_WRITE_2(mac, BWI_COMM_MOBJ, ofs + 0x20,
        MOBJ_READ_2(mac, BWI_COMM_MOBJ, ofs));
 }
}

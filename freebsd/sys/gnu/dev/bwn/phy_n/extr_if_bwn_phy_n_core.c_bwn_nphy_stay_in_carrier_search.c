
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_phy_n {scalar_t__ deaf_count; int const* clip_state; int classifier_state; } ;
struct bwn_phy {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;


 int BWN_NPHY_CLASSCTL_WAITEDEN ;
 int bwn_nphy_classifier (struct bwn_mac*,int,int ) ;
 int bwn_nphy_read_clip_detection (struct bwn_mac*,int const*) ;
 int bwn_nphy_reset_cca (struct bwn_mac*) ;
 int bwn_nphy_write_clip_detection (struct bwn_mac*,int const*) ;

__attribute__((used)) static void bwn_nphy_stay_in_carrier_search(struct bwn_mac *mac, bool enable)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_n *nphy = phy->phy_n;

 if (enable) {
  static const uint16_t clip[] = { 0xFFFF, 0xFFFF };
  if (nphy->deaf_count++ == 0) {
   nphy->classifier_state = bwn_nphy_classifier(mac, 0, 0);
   bwn_nphy_classifier(mac, 0x7,
         BWN_NPHY_CLASSCTL_WAITEDEN);
   bwn_nphy_read_clip_detection(mac, nphy->clip_state);
   bwn_nphy_write_clip_detection(mac, clip);
  }
  bwn_nphy_reset_cca(mac);
 } else {
  if (--nphy->deaf_count == 0) {
   bwn_nphy_classifier(mac, 0x7, nphy->classifier_state);
   bwn_nphy_write_clip_detection(mac, nphy->clip_state);
  }
 }
}

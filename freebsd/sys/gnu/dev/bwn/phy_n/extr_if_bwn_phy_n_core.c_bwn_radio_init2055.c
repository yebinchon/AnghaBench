
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {scalar_t__ mac_status; } ;


 scalar_t__ BWN_BAND_5G ;
 scalar_t__ BWN_MAC_STATUS_INITED ;
 int b2055_upload_inittab (struct bwn_mac*,int,int ) ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;
 int bwn_radio_init2055_post (struct bwn_mac*) ;
 int bwn_radio_init2055_pre (struct bwn_mac*) ;

__attribute__((used)) static void bwn_radio_init2055(struct bwn_mac *mac)
{
 bwn_radio_init2055_pre(mac);
 if (mac->mac_status < BWN_MAC_STATUS_INITED) {

  b2055_upload_inittab(mac, 0, 0);
 } else {
  bool ghz5 = bwn_current_band(mac) == BWN_BAND_5G;
  b2055_upload_inittab(mac, ghz5, 0);
 }
 bwn_radio_init2055_post(mac);
}

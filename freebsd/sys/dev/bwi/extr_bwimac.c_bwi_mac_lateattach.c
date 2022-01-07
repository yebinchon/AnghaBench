
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phy_mode; } ;
struct bwi_mac {int mac_rev; int mac_regwin; int mac_sc; TYPE_1__ mac_phy; } ;


 int BWI_BBP_ATTEN ;
 int BWI_BBP_ATTEN_MAGIC ;
 int BWI_STATE_HI ;
 int CSR_READ_4 (int ,int ) ;
 int CSR_WRITE_2 (int ,int ,int ) ;
 scalar_t__ IEEE80211_MODE_11A ;
 int bwi_mac_get_property (struct bwi_mac*) ;
 int bwi_mac_reset (struct bwi_mac*,int) ;
 int bwi_mac_test (struct bwi_mac*) ;
 int bwi_phy_attach (struct bwi_mac*) ;
 int bwi_regwin_disable (int ,int *,int ) ;
 int bwi_rf_attach (struct bwi_mac*) ;
 int bwi_rf_map_txpower (struct bwi_mac*) ;
 int bwi_rf_off (struct bwi_mac*) ;

int
bwi_mac_lateattach(struct bwi_mac *mac)
{
 int error;

 if (mac->mac_rev >= 5)
  CSR_READ_4(mac->mac_sc, BWI_STATE_HI);

 bwi_mac_reset(mac, 1);

 error = bwi_phy_attach(mac);
 if (error)
  return error;

 error = bwi_rf_attach(mac);
 if (error)
  return error;


 if (mac->mac_phy.phy_mode == IEEE80211_MODE_11A)
  bwi_mac_reset(mac, 0);
 else
  bwi_mac_reset(mac, 1);

 error = bwi_mac_test(mac);
 if (error)
  return error;

 error = bwi_mac_get_property(mac);
 if (error)
  return error;

 error = bwi_rf_map_txpower(mac);
 if (error)
  return error;

 bwi_rf_off(mac);
 CSR_WRITE_2(mac->mac_sc, BWI_BBP_ATTEN, BWI_BBP_ATTEN_MAGIC);
 bwi_regwin_disable(mac->mac_sc, &mac->mac_regwin, 0);

 return 0;
}

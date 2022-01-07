
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct bwn_nphy_rf_control_override_rev7 {scalar_t__ field; } ;
struct bwn_mac {int mac_sc; } ;


 int BWN_ERRPRINTF (int ,char*,int) ;
 int nitems (struct bwn_nphy_rf_control_override_rev7*) ;
 struct bwn_nphy_rf_control_override_rev7* tbl_rf_control_override_rev7_over0 ;
 struct bwn_nphy_rf_control_override_rev7* tbl_rf_control_override_rev7_over1 ;
 struct bwn_nphy_rf_control_override_rev7* tbl_rf_control_override_rev7_over2 ;

const struct bwn_nphy_rf_control_override_rev7 *
bwn_nphy_get_rf_ctl_over_rev7(struct bwn_mac *mac, uint16_t field,
    uint8_t override)
{
 const struct bwn_nphy_rf_control_override_rev7 *e;
 uint8_t size, i;

 switch (override) {
 case 0:
  e = tbl_rf_control_override_rev7_over0;
  size = nitems(tbl_rf_control_override_rev7_over0);
  break;
 case 1:
  e = tbl_rf_control_override_rev7_over1;
  size = nitems(tbl_rf_control_override_rev7_over1);
  break;
 case 2:
  e = tbl_rf_control_override_rev7_over2;
  size = nitems(tbl_rf_control_override_rev7_over2);
  break;
 default:
  BWN_ERRPRINTF(mac->mac_sc, "Invalid override value %d\n", override);
  return ((void*)0);
 }

 for (i = 0; i < size; i++) {
  if (e[i].field == field)
   return &e[i];
 }

 return ((void*)0);
}

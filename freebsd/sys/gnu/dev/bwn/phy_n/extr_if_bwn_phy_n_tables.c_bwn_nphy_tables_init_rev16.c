
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ phy_do_full_init; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_NTAB_NOISEVAR_R7 ;
 int bwn_nphy_tables_init_rev7_volatile (struct bwn_mac*) ;
 int bwn_nphy_tables_init_shared_lut (struct bwn_mac*) ;
 int bwn_ntab_noisevar_r7 ;
 int ntab_upload (struct bwn_mac*,int ,int ) ;

__attribute__((used)) static void bwn_nphy_tables_init_rev16(struct bwn_mac *mac)
{

 if (mac->mac_phy.phy_do_full_init) {
  ntab_upload(mac, BWN_NTAB_NOISEVAR_R7, bwn_ntab_noisevar_r7);
  bwn_nphy_tables_init_shared_lut(mac);
 }


 bwn_nphy_tables_init_rev7_volatile(mac);
}

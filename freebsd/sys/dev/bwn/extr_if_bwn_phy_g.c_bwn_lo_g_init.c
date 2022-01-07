
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int bwn_has_hwpctl (struct bwn_mac*) ;
 int bwn_lo_get_powervector (struct bwn_mac*) ;
 int bwn_phy_g_dc_lookup_init (struct bwn_mac*,int) ;

__attribute__((used)) static void
bwn_lo_g_init(struct bwn_mac *mac)
{

 if (!bwn_has_hwpctl(mac))
  return;

 bwn_lo_get_powervector(mac);
 bwn_phy_g_dc_lookup_init(mac, 1);
}

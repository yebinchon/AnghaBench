
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_mac {int dummy; } ;


 int EINVAL ;
 int bwn_phy_g_switch_chan (struct bwn_mac*,int,int ) ;

int
bwn_phy_g_switch_channel(struct bwn_mac *mac, uint32_t newchan)
{

 if ((newchan < 1) || (newchan > 14))
  return (EINVAL);
 bwn_phy_g_switch_chan(mac, newchan, 0);

 return (0);
}

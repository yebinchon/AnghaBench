
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_config {unsigned int requested_fc; int supported; int advertising; scalar_t__ autoneg; int speed; int requested_speed; int duplex; int requested_duplex; unsigned char fc; scalar_t__ link_ok; } ;
struct cphy {TYPE_1__* ops; int adapter; } ;
struct cmac {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct cphy*,int ) ;int (* autoneg_enable ) (struct cphy*) ;int (* power_down ) (struct cphy*,int ) ;int (* set_speed_duplex ) (struct cphy*,int,int) ;int (* advertise ) (struct cphy*,int) ;} ;


 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 scalar_t__ AUTONEG_DISABLE ;
 unsigned int PAUSE_RX ;
 unsigned int PAUSE_TX ;
 int SUPPORTED_Autoneg ;
 int is_10G (int ) ;
 int stub1 (struct cphy*,int) ;
 int stub2 (struct cphy*,int,int) ;
 int stub3 (struct cphy*,int ) ;
 int stub4 (struct cphy*) ;
 int stub5 (struct cphy*,int ) ;
 int t3_mac_set_speed_duplex_fc (struct cmac*,int,int,unsigned int) ;

int t3_link_start(struct cphy *phy, struct cmac *mac, struct link_config *lc)
{
 unsigned int fc = lc->requested_fc & (PAUSE_RX | PAUSE_TX);

 lc->link_ok = 0;
 if (lc->supported & SUPPORTED_Autoneg) {
  lc->advertising &= ~(ADVERTISED_Asym_Pause | ADVERTISED_Pause);
  if (fc) {
   lc->advertising |= ADVERTISED_Asym_Pause;
   if (fc & PAUSE_RX)
    lc->advertising |= ADVERTISED_Pause;
  }

  phy->ops->advertise(phy, lc->advertising);

  if (lc->autoneg == AUTONEG_DISABLE) {
   lc->speed = lc->requested_speed;
   lc->duplex = lc->requested_duplex;
   lc->fc = (unsigned char)fc;
   t3_mac_set_speed_duplex_fc(mac, lc->speed, lc->duplex,
         fc);

   phy->ops->set_speed_duplex(phy, lc->speed, lc->duplex);

   if (!is_10G(phy->adapter))
    phy->ops->power_down(phy, 0);
  } else
   phy->ops->autoneg_enable(phy);
 } else {
  t3_mac_set_speed_duplex_fc(mac, -1, -1, fc);
  lc->fc = (unsigned char)fc;
  phy->ops->reset(phy, 0);
 }
 return 0;
}

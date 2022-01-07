
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {scalar_t__ addr; int adapter; } ;


 unsigned int AQBIT (int) ;
 int A_T3DBG_GPIO_EN ;
 int CH_WARN (int ,char*,scalar_t__,unsigned int) ;
 int F_GPIO10_OUT_VAL ;
 int F_GPIO6_OUT_VAL ;
 int MDIO_DEV_VEND1 ;
 unsigned int aq100x_temperature (struct cphy*) ;
 int cphy_cause_alarm ;
 int e ;
 int mdio_read (struct cphy*,int ,int,unsigned int*) ;
 int t3_set_reg_field (int ,int ,int ,int ) ;

__attribute__((used)) static int
aq100x_vendor_intr(struct cphy *phy, int *rc)
{
 int err;
 unsigned int cause, v;

 err = mdio_read(phy, MDIO_DEV_VEND1, 0xfc01, &cause);
 if (err)
  return (err);

 if (cause & AQBIT(2)) {
  err = mdio_read(phy, MDIO_DEV_VEND1, 0xcc00, &v);
  if (err)
   return (err);

  if (v & AQBIT(e)) {
   CH_WARN(phy->adapter, "PHY%d: temperature is now %dC\n",
       phy->addr, aq100x_temperature(phy));

   t3_set_reg_field(phy->adapter, A_T3DBG_GPIO_EN,
       phy->addr ? F_GPIO10_OUT_VAL : F_GPIO6_OUT_VAL, 0);

   *rc |= cphy_cause_alarm;
  }

  cause &= ~4;
 }

 if (cause)
  CH_WARN(phy->adapter, "PHY%d: unhandled vendor interrupt"
      " (0x%x)\n", phy->addr, cause);

 return (0);

}

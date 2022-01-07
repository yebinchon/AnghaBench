
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_reg_set {int member_1; int member_2; int val; int reg; int const devad; int const member_0; } ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int ARRAY_SIZE (struct elink_reg_set*) ;






 int MDIO_PMA_REG_8481_LINK_SIGNAL ;

 int MDIO_PMA_REG_84823_CTL_LED_CTL_1 ;

 int MDIO_PMA_REG_84823_LED3_STRETCH_EN ;
 int MDIO_PMA_REG_84833_CTL_LED_CTL_1 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int const,int ,int*) ;
 int elink_cl45_read_or_write (struct bxe_softc*,struct elink_phy*,int const,int,int ) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int const,int ,int) ;
 scalar_t__ elink_is_8483x_8485x (struct elink_phy*) ;

__attribute__((used)) static void elink_848xx_set_led(struct bxe_softc *sc,
    struct elink_phy *phy)
{
 uint16_t val, offset, i;
 static struct elink_reg_set reg_set[] = {
  {134, 133, 0x0080},
  {134, 132, 0x0018},
  {134, 130, 0x0006},
  {134, 131, 0x0000},
  {134, 128,
   129},
  {135, 0xFFFB, 0xFFFD}
 };

 elink_cl45_read(sc, phy,
   134,
   MDIO_PMA_REG_8481_LINK_SIGNAL, &val);
 val &= 0xFE00;
 val |= 0x0092;

 elink_cl45_write(sc, phy,
    134,
    MDIO_PMA_REG_8481_LINK_SIGNAL, val);

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  elink_cl45_write(sc, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);

 if (elink_is_8483x_8485x(phy))
  offset = MDIO_PMA_REG_84833_CTL_LED_CTL_1;
 else
  offset = MDIO_PMA_REG_84823_CTL_LED_CTL_1;


 elink_cl45_read_or_write(sc, phy,
     134, offset,
     MDIO_PMA_REG_84823_LED3_STRETCH_EN);
}

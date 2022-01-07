
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int,int) ;

__attribute__((used)) static void elink_sfp_mask_fault(struct bxe_softc *sc,
     struct elink_phy *phy,
     uint16_t alarm_status_offset,
     uint16_t alarm_ctrl_offset)
{
 uint16_t alarm_status, val;
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, alarm_status_offset,
   &alarm_status);
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, alarm_status_offset,
   &alarm_status);

 elink_cl45_read(sc, phy, MDIO_PMA_DEVAD, alarm_ctrl_offset, &val);
 if (alarm_status & (1<<0))
  val &= ~(1<<0);
 else
  val |= (1<<0);
 elink_cl45_write(sc, phy, MDIO_PMA_DEVAD, alarm_ctrl_offset, val);
}

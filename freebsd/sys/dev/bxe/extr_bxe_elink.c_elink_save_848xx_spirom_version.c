
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_reg_set {int member_1; int member_2; int reg; int val; int const devad; int const member_0; } ;
struct elink_phy {int ver_addr; } ;
struct bxe_softc {int dummy; } ;


 int ARRAY_SIZE (struct elink_reg_set*) ;
 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int const MDIO_CTL_DEVAD ;

 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int const,int,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int const,int,int) ;
 scalar_t__ elink_is_8483x_8485x (struct elink_phy*) ;
 int elink_save_spirom_version (struct bxe_softc*,int ,int,int ) ;

__attribute__((used)) static void elink_save_848xx_spirom_version(struct elink_phy *phy,
         struct bxe_softc *sc,
         uint8_t port)
{
 uint16_t val, fw_ver2, cnt, i;
 static struct elink_reg_set reg_set[] = {
  {128, 0xA819, 0x0014},
  {128, 0xA81A, 0xc200},
  {128, 0xA81B, 0x0000},
  {128, 0xA81C, 0x0300},
  {128, 0xA817, 0x0009}
 };
 uint16_t fw_ver1;

 if (elink_is_8483x_8485x(phy)) {
  elink_cl45_read(sc, phy, MDIO_CTL_DEVAD, 0x400f, &fw_ver1);
  elink_save_spirom_version(sc, port, fw_ver1 & 0xfff,
    phy->ver_addr);
 } else {


  for (i = 0; i < ARRAY_SIZE(reg_set); i++)
   elink_cl45_write(sc, phy, reg_set[i].devad,
      reg_set[i].reg, reg_set[i].val);

  for (cnt = 0; cnt < 100; cnt++) {
   elink_cl45_read(sc, phy, 128, 0xA818, &val);
   if (val & 1)
    break;
   DELAY(5);
  }
  if (cnt == 100) {
   ELINK_DEBUG_P0(sc, "Unable to read 848xx "
     "phy fw version(1)\n");
   elink_save_spirom_version(sc, port, 0,
        phy->ver_addr);
   return;
  }



  elink_cl45_write(sc, phy, 128, 0xA819, 0x0000);
  elink_cl45_write(sc, phy, 128, 0xA81A, 0xc200);
  elink_cl45_write(sc, phy, 128, 0xA817, 0x000A);
  for (cnt = 0; cnt < 100; cnt++) {
   elink_cl45_read(sc, phy, 128, 0xA818, &val);
   if (val & 1)
    break;
   DELAY(5);
  }
  if (cnt == 100) {
   ELINK_DEBUG_P0(sc, "Unable to read 848xx phy fw "
     "version(2)\n");
   elink_save_spirom_version(sc, port, 0,
        phy->ver_addr);
   return;
  }


  elink_cl45_read(sc, phy, 128, 0xA81B, &fw_ver1);

  elink_cl45_read(sc, phy, 128, 0xA81C, &fw_ver2);

  elink_save_spirom_version(sc, port, (fw_ver2<<16) | fw_ver1,
       phy->ver_addr);
 }

}

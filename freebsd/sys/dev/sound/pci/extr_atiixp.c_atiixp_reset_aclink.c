
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atiixp_info {int dev; } ;


 int ATI_REG_CMD ;
 int ATI_REG_CMD_ACLINK_ACTIVE ;
 int ATI_REG_CMD_AC_RESET ;
 int ATI_REG_CMD_AC_SOFT_RESET ;
 int ATI_REG_CMD_AC_SYNC ;
 int ATI_REG_CMD_POWERDOWN ;
 int DELAY (int) ;
 int atiixp_rd (struct atiixp_info*,int ) ;
 int atiixp_wr (struct atiixp_info*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
atiixp_reset_aclink(struct atiixp_info *sc)
{
 uint32_t value, timeout;


 value = atiixp_rd(sc, ATI_REG_CMD);
 if (value & ATI_REG_CMD_POWERDOWN) {

  value &= ~ATI_REG_CMD_POWERDOWN;
  atiixp_wr(sc, ATI_REG_CMD, value);


  DELAY(20);
 }


 value = atiixp_rd(sc, ATI_REG_CMD);
 value |= ATI_REG_CMD_AC_SOFT_RESET;
 atiixp_wr(sc, ATI_REG_CMD, value);


 value = atiixp_rd(sc, ATI_REG_CMD);
 DELAY(20);


 value = atiixp_rd(sc, ATI_REG_CMD);
 value &= ~ATI_REG_CMD_AC_SOFT_RESET;
 atiixp_wr(sc, ATI_REG_CMD, value);


 timeout = 10;
 value = atiixp_rd(sc, ATI_REG_CMD);
 while (!(value & ATI_REG_CMD_ACLINK_ACTIVE) && --timeout) {





  value &= ~ATI_REG_CMD_AC_RESET;
  value |= ATI_REG_CMD_AC_SYNC;
  atiixp_wr(sc, ATI_REG_CMD, value);


  value = atiixp_rd(sc, ATI_REG_CMD);
  DELAY(20);


  value = atiixp_rd(sc, ATI_REG_CMD);
  value |= ATI_REG_CMD_AC_RESET;
  atiixp_wr(sc, ATI_REG_CMD, value);


  value = atiixp_rd(sc, ATI_REG_CMD);
 }

 if (timeout == 0)
  device_printf(sc->dev, "giving up aclink reset\n");






 value = atiixp_rd(sc, ATI_REG_CMD);
 value |= ATI_REG_CMD_AC_SYNC | ATI_REG_CMD_AC_RESET;
 atiixp_wr(sc, ATI_REG_CMD, value);
}

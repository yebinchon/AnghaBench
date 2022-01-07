
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct muge_softc {int dummy; } ;


 int ETH_DP_ADDR ;
 int ETH_DP_CMD ;
 int ETH_DP_CMD_WRITE_ ;
 int ETH_DP_DATA ;
 int ETH_DP_SEL ;
 int ETH_DP_SEL_DPRDY_ ;
 int ETH_DP_SEL_RSEL_MASK_ ;
 int MA_OWNED ;
 int MUGE_LOCK_ASSERT (struct muge_softc*,int ) ;
 int lan78xx_read_reg (struct muge_softc*,int ,int*) ;
 int lan78xx_wait_for_bits (struct muge_softc*,int ,int ) ;
 int lan78xx_write_reg (struct muge_softc*,int ,int) ;

__attribute__((used)) static int
lan78xx_dataport_write(struct muge_softc *sc, uint32_t ram_select,
    uint32_t addr, uint32_t length, uint32_t *buf)
{
 uint32_t dp_sel;
 int i, ret;

 MUGE_LOCK_ASSERT(sc, MA_OWNED);
 ret = lan78xx_wait_for_bits(sc, ETH_DP_SEL, ETH_DP_SEL_DPRDY_);
 if (ret < 0)
  goto done;

 ret = lan78xx_read_reg(sc, ETH_DP_SEL, &dp_sel);

 dp_sel &= ~ETH_DP_SEL_RSEL_MASK_;
 dp_sel |= ram_select;

 ret = lan78xx_write_reg(sc, ETH_DP_SEL, dp_sel);

 for (i = 0; i < length; i++) {
  ret = lan78xx_write_reg(sc, ETH_DP_ADDR, addr + i);
  ret = lan78xx_write_reg(sc, ETH_DP_DATA, buf[i]);
  ret = lan78xx_write_reg(sc, ETH_DP_CMD, ETH_DP_CMD_WRITE_);
  ret = lan78xx_wait_for_bits(sc, ETH_DP_SEL, ETH_DP_SEL_DPRDY_);
  if (ret != 0)
   goto done;
 }

done:
 return (ret);
}

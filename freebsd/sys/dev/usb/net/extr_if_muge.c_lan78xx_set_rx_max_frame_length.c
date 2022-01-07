
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct muge_softc {int dummy; } ;


 int ETH_MAC_RX ;
 int ETH_MAC_RX_EN_ ;
 int ETH_MAC_RX_MAX_FR_SIZE_MASK_ ;
 int ETH_MAC_RX_MAX_FR_SIZE_SHIFT_ ;
 int lan78xx_read_reg (struct muge_softc*,int ,int*) ;
 int lan78xx_write_reg (struct muge_softc*,int ,int) ;

__attribute__((used)) static int
lan78xx_set_rx_max_frame_length(struct muge_softc *sc, int size)
{
 int err = 0;
 uint32_t buf;
 bool rxenabled;


 err = lan78xx_read_reg(sc, ETH_MAC_RX, &buf);
 rxenabled = ((buf & ETH_MAC_RX_EN_) != 0);

 if (rxenabled) {
  buf &= ~ETH_MAC_RX_EN_;
  err = lan78xx_write_reg(sc, ETH_MAC_RX, buf);
 }


 buf &= ~ETH_MAC_RX_MAX_FR_SIZE_MASK_;
 buf |= (((size + 4) << ETH_MAC_RX_MAX_FR_SIZE_SHIFT_) &
     ETH_MAC_RX_MAX_FR_SIZE_MASK_);
 err = lan78xx_write_reg(sc, ETH_MAC_RX, buf);



 if (rxenabled) {
  buf |= ETH_MAC_RX_EN_;
  err = lan78xx_write_reg(sc, ETH_MAC_RX, buf);
 }

 return (0);
}

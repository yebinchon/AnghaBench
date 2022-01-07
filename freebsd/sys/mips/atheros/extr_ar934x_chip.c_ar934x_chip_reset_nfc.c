
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR934X_RESET_ETH_SWITCH_ANALOG ;
 int AR934X_RESET_NANDF ;
 int DELAY (int) ;
 int ar71xx_device_start (int ) ;
 int ar71xx_device_stop (int ) ;

__attribute__((used)) static void
ar934x_chip_reset_nfc(int active)
{

 if (active) {
  ar71xx_device_start(AR934X_RESET_NANDF);
  DELAY(100);

  ar71xx_device_start(AR934X_RESET_ETH_SWITCH_ANALOG);
  DELAY(250);
 } else {
  ar71xx_device_stop(AR934X_RESET_ETH_SWITCH_ANALOG);
  DELAY(250);

  ar71xx_device_stop(AR934X_RESET_NANDF);
  DELAY(100);
 }
}

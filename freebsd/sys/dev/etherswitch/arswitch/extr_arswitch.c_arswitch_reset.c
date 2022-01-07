
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AR8X16_MASK_CTRL_SOFT_RESET ;
 int AR8X16_REG_MASK_CTRL ;
 int DELAY (int) ;
 int arswitch_readreg (int ,int ) ;
 int arswitch_writereg (int ,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
arswitch_reset(device_t dev)
{

 arswitch_writereg(dev, AR8X16_REG_MASK_CTRL,
     AR8X16_MASK_CTRL_SOFT_RESET);
 DELAY(1000);
 if (arswitch_readreg(dev, AR8X16_REG_MASK_CTRL) &
     AR8X16_MASK_CTRL_SOFT_RESET) {
  device_printf(dev, "unable to reset switch\n");
  return (-1);
 }
 return (0);
}

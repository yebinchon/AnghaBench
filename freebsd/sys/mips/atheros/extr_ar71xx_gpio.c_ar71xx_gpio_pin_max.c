
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int AR71XX_GPIO_PINS ;
 int AR7241_GPIO_PINS ;
 int AR724X_GPIO_PINS ;
 int AR91XX_GPIO_PINS ;
 int AR933X_GPIO_COUNT ;
 int AR934X_GPIO_COUNT ;
 int QCA953X_GPIO_COUNT ;
 int QCA955X_GPIO_COUNT ;
 int ar71xx_soc ;

__attribute__((used)) static int
ar71xx_gpio_pin_max(device_t dev, int *maxpin)
{

 switch (ar71xx_soc) {
  case 138:
  case 137:
   *maxpin = AR91XX_GPIO_PINS - 1;
   break;
  case 141:
  case 139:
   *maxpin = AR724X_GPIO_PINS - 1;
   break;
  case 140:
   *maxpin = AR7241_GPIO_PINS - 1;
   break;
  case 136:
  case 135:
   *maxpin = AR933X_GPIO_COUNT - 1;
   break;
  case 134:
  case 133:
  case 132:
   *maxpin = AR934X_GPIO_COUNT - 1;
   break;
  case 131:
  case 130:
   *maxpin = QCA953X_GPIO_COUNT - 1;
   break;
  case 129:
  case 128:
   *maxpin = QCA955X_GPIO_COUNT - 1;
   break;
  default:
   *maxpin = AR71XX_GPIO_PINS - 1;
 }
 return (0);
}

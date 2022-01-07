
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdaa_devinfo {int gpio_cap; int nid; int dev; } ;
typedef int device_t ;


 int HDA_CMD_GET_GPIO_DATA (int ,int ) ;
 int HDA_CMD_GET_GPIO_DIRECTION (int ,int ) ;
 int HDA_CMD_GET_GPIO_ENABLE_MASK (int ,int ) ;
 int HDA_CMD_GET_GPIO_STICKY_MASK (int ,int ) ;
 int HDA_CMD_GET_GPIO_UNSOLICITED_ENABLE_MASK (int ,int ) ;
 int HDA_CMD_GET_GPIO_WAKE_ENABLE_MASK (int ,int ) ;
 int HDA_PARAM_GPIO_COUNT_NUM_GPIO (int ) ;
 int device_printf (int ,char*,int) ;
 int hda_command (int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
hdaa_dump_gpio(struct hdaa_devinfo *devinfo)
{
 device_t dev = devinfo->dev;
 int i;
 uint32_t data, dir, enable, wake, unsol, sticky;

 if (HDA_PARAM_GPIO_COUNT_NUM_GPIO(devinfo->gpio_cap) > 0) {
  data = hda_command(dev,
      HDA_CMD_GET_GPIO_DATA(0, devinfo->nid));
  enable = hda_command(dev,
      HDA_CMD_GET_GPIO_ENABLE_MASK(0, devinfo->nid));
  dir = hda_command(dev,
      HDA_CMD_GET_GPIO_DIRECTION(0, devinfo->nid));
  wake = hda_command(dev,
      HDA_CMD_GET_GPIO_WAKE_ENABLE_MASK(0, devinfo->nid));
  unsol = hda_command(dev,
      HDA_CMD_GET_GPIO_UNSOLICITED_ENABLE_MASK(0, devinfo->nid));
  sticky = hda_command(dev,
      HDA_CMD_GET_GPIO_STICKY_MASK(0, devinfo->nid));
  for (i = 0; i < HDA_PARAM_GPIO_COUNT_NUM_GPIO(devinfo->gpio_cap); i++) {
   device_printf(dev, " GPIO%d: ", i);
   if ((enable & (1 << i)) == 0) {
    printf("disabled\n");
    continue;
   }
   if ((dir & (1 << i)) == 0) {
    printf("input%s%s%s",
        (sticky & (1 << i)) ? " sticky" : "",
        (unsol & (1 << i)) ? " unsol" : "",
        (wake & (1 << i)) ? " wake" : "");
   } else
    printf("output");
   printf(" state=%d\n", (data >> i) & 1);
  }
 }
}

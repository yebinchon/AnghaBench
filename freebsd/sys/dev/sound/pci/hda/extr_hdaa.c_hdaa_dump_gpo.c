
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdaa_devinfo {int gpio_cap; int nid; int dev; } ;
typedef int device_t ;


 int HDA_CMD_GET_GPO_DATA (int ,int ) ;
 int HDA_PARAM_GPIO_COUNT_NUM_GPO (int ) ;
 int device_printf (int ,char*,int,int) ;
 int hda_command (int ,int ) ;

__attribute__((used)) static void
hdaa_dump_gpo(struct hdaa_devinfo *devinfo)
{
 device_t dev = devinfo->dev;
 int i;
 uint32_t data;

 if (HDA_PARAM_GPIO_COUNT_NUM_GPO(devinfo->gpio_cap) > 0) {
  data = hda_command(dev,
      HDA_CMD_GET_GPO_DATA(0, devinfo->nid));
  for (i = 0; i < HDA_PARAM_GPIO_COUNT_NUM_GPO(devinfo->gpio_cap); i++) {
   device_printf(dev, " GPO%d: state=%d", i,
        (data >> i) & 1);
  }
 }
}

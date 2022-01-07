
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int buf ;


 int ar71xx_platform_create_cal_data (int ,int,long,int) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int,int,int) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 scalar_t__ resource_long_value (int ,int ,char*,long*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
ar71xx_platform_check_eeprom_hints(device_t dev)
{
 char buf[64];
 long int addr;
 int size;
 int i;

 for (i = 0; i < 8; i++) {
  snprintf(buf, sizeof(buf), "map.%d.ath_fixup_addr", i);
  if (resource_long_value(device_get_name(dev),
      device_get_unit(dev), buf, &addr) != 0)
   break;
  snprintf(buf, sizeof(buf), "map.%d.ath_fixup_size", i);
  if (resource_int_value(device_get_name(dev),
      device_get_unit(dev), buf, &size) != 0)
   break;
  device_printf(dev, "map.%d.ath_fixup_addr=0x%08x; size=%d\n",
      i, (int) addr, size);
  (void) ar71xx_platform_create_cal_data(dev, i, addr, size);
        }

        return (0);
}

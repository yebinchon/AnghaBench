
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct ad7417_sensor {TYPE_1__ therm; } ;
typedef int phandle_t ;
typedef int int16_t ;
typedef int eeprom ;
typedef int cell_t ;


 int OF_finddevice (char*) ;
 int OF_getprop (int ,char*,int*,int) ;
 int ZERO_C_TO_K ;
 int ad7417_adc_read (struct ad7417_sensor*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static int
ad7417_diode_read(struct ad7417_sensor *sens)
{
 static int eeprom_read = 0;
 static cell_t eeprom[2][40];
 phandle_t eeprom_node;
 int rawval, diode_slope, diode_offset;
 int temp;

 if (!eeprom_read) {
  eeprom_node = OF_finddevice("/u3/i2c/cpuid@a0");
  OF_getprop(eeprom_node, "cpuid", eeprom[0], sizeof(eeprom[0]));
  eeprom_node = OF_finddevice("/u3/i2c/cpuid@a2");
  OF_getprop(eeprom_node, "cpuid", eeprom[1], sizeof(eeprom[1]));
  eeprom_read = 1;
 }

 rawval = ad7417_adc_read(sens);
 if (rawval < 0)
  return (-1);

 if (strstr(sens->therm.name, "CPU B") != ((void*)0)) {
  diode_slope = eeprom[1][0x11] >> 16;
  diode_offset = (int16_t)(eeprom[1][0x11] & 0xffff) << 12;
 } else {
  diode_slope = eeprom[0][0x11] >> 16;
  diode_offset = (int16_t)(eeprom[0][0x11] & 0xffff) << 12;
 }

 temp = (rawval*diode_slope + diode_offset) >> 2;
 temp = (10*(temp >> 16)) + ((10*(temp & 0xffff)) >> 16);

 return (temp + ZERO_C_TO_K);
}

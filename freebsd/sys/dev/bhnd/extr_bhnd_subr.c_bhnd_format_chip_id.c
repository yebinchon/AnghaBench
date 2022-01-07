
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int snprintf (char*,size_t,char*,int) ;

int
bhnd_format_chip_id(char *buffer, size_t size, uint16_t chip_id)
{

 if (chip_id >= 0x4000 && chip_id <= 0x9C3F)
  return (snprintf(buffer, size, "BCM%hX", chip_id));
 else
  return (snprintf(buffer, size, "BCM%hu", chip_id));
}

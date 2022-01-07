
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int device_t ;


 int bhnd_nvram_getvar_int (int ,char const*,int *,int) ;

int
bhnd_nvram_getvar_int16(device_t dev, const char *name, int16_t *value)
{
 return (bhnd_nvram_getvar_int(dev, name, value, sizeof(*value)));
}

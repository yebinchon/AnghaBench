
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int fankey ;
typedef int device_t ;


 scalar_t__ asmc_key_write (int ,char*,int*,int) ;
 int snprintf (char*,int,char const*,int) ;

__attribute__((used)) static int
asmc_fan_setvalue(device_t dev, const char *key, int fan, int speed)
{
 uint8_t buf[2];
 char fankey[5];

 speed *= 4;

 buf[0] = speed>>8;
 buf[1] = speed;

 snprintf(fankey, sizeof(fankey), key, fan);
 if (asmc_key_write(dev, fankey, buf, sizeof buf) < 0)
  return (-1);

 return (0);
}

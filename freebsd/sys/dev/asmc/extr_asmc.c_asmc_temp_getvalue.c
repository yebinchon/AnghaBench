
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 scalar_t__ asmc_key_read (int ,char const*,int*,int) ;

__attribute__((used)) static int
asmc_temp_getvalue(device_t dev, const char *key)
{
 uint8_t buf[2];




 if (asmc_key_read(dev, key, buf, sizeof buf) < 0)
  return (-1);

 return (buf[0]);
}

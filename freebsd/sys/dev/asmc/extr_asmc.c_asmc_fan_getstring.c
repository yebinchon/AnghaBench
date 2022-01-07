
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int fankey ;
typedef int device_t ;


 scalar_t__ asmc_key_read (int ,char*,char*,char) ;
 int snprintf (char*,int,char const*,int) ;

__attribute__((used)) static char*
asmc_fan_getstring(device_t dev, const char *key, int fan, uint8_t *buf, uint8_t buflen)
{
 char fankey[5];
 char* desc;

 snprintf(fankey, sizeof(fankey), key, fan);
 if (asmc_key_read(dev, fankey, buf, buflen) < 0)
  return (((void*)0));
 desc = buf+4;

 return (desc);
}

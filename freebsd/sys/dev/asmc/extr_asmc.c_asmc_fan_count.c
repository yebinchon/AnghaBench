
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int ASMC_KEY_FANCOUNT ;
 scalar_t__ asmc_key_read (int ,int ,int*,int) ;

__attribute__((used)) static int
asmc_fan_count(device_t dev)
{
 uint8_t buf[1];

 if (asmc_key_read(dev, ASMC_KEY_FANCOUNT, buf, sizeof buf) < 0)
  return (-1);

 return (buf[0]);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;
typedef int device_t ;


 int AD7417_TEMP ;
 int ad7417_read_2 (int ,int ,int ,int*) ;

__attribute__((used)) static int
ad7417_get_temp(device_t dev, uint32_t addr, int *temp)
{
 uint16_t buf[2];
 uint16_t read;
 int err;

 err = ad7417_read_2(dev, addr, AD7417_TEMP, buf);

 if (err < 0)
  return (-1);

 read = *((int16_t*)buf);




 *temp = (((int16_t)(read & 0xffc0)) >> 6) * 25 / 10;
 return (0);
}

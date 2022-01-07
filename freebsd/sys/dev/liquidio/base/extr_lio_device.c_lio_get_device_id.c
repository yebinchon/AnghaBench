
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct octeon_device {int octeon_id; } ;


 size_t LIO_MAX_DEVICES ;
 struct octeon_device** octeon_device ;

int
lio_get_device_id(void *dev)
{
 struct octeon_device *octeon_dev = (struct octeon_device *)dev;
 uint32_t i;

 for (i = 0; i < LIO_MAX_DEVICES; i++)
  if (octeon_device[i] == octeon_dev)
   return (octeon_dev->octeon_id);

 return (-1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int BHND_BUS_READ_IOCTL (int ,int ,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_read_ioctl(device_t dev, uint16_t *ioctl)
{
 return (BHND_BUS_READ_IOCTL(device_get_parent(dev), dev, ioctl));
}

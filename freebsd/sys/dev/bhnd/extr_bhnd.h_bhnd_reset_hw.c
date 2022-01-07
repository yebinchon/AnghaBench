
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int device_t ;


 int BHND_BUS_RESET_HW (int ,int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_reset_hw(device_t dev, uint16_t ioctl, uint16_t reset_ioctl)
{
 return (BHND_BUS_RESET_HW(device_get_parent(dev), dev, ioctl,
     reset_ioctl));
}

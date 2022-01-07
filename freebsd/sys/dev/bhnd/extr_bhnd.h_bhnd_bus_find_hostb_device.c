
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BHND_BUS_FIND_HOSTB_DEVICE (int ) ;

__attribute__((used)) static inline device_t
bhnd_bus_find_hostb_device(device_t dev) {
 return (BHND_BUS_FIND_HOSTB_DEVICE(dev));
}

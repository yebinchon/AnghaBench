
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;
typedef int bus_size_t ;


 int BHND_BUS_READ_CONFIG (int ,int ,int ,void*,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline uint32_t
bhnd_read_config(device_t dev, bus_size_t offset, void *value, u_int width)
{
 return (BHND_BUS_READ_CONFIG(device_get_parent(dev), dev, offset,
     value, width));
}

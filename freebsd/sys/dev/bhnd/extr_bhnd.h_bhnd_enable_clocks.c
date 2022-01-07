
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int BHND_BUS_ENABLE_CLOCKS (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_enable_clocks(device_t dev, uint32_t clocks)
{
 return (BHND_BUS_ENABLE_CLOCKS(device_get_parent(dev), dev, clocks));
}

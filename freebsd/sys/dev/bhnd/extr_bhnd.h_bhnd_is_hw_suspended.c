
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BHND_BUS_IS_HW_SUSPENDED (int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline bool
bhnd_is_hw_suspended(device_t dev)
{
 return (BHND_BUS_IS_HW_SUSPENDED(device_get_parent(dev), dev));
}

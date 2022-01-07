
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_clock ;


 int BHND_PWRCTL_HOSTB_UNGATE_CLOCK (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_pwrctl_hostb_ungate_clock(device_t dev, bhnd_clock clock)
{
 return (BHND_PWRCTL_HOSTB_UNGATE_CLOCK(device_get_parent(dev), dev,
     clock));
}

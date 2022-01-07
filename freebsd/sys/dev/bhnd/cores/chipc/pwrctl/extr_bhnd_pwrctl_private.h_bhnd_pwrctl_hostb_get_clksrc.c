
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_clock ;
typedef int bhnd_clksrc ;


 int BHND_PWRCTL_HOSTB_GET_CLKSRC (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline bhnd_clksrc
bhnd_pwrctl_hostb_get_clksrc(device_t dev, bhnd_clock clock)
{
 return (BHND_PWRCTL_HOSTB_GET_CLKSRC(device_get_parent(dev), dev,
     clock));
}

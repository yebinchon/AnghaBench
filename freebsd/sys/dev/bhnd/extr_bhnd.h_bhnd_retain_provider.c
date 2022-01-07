
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_service_t ;


 int BHND_BUS_RETAIN_PROVIDER (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline device_t
bhnd_retain_provider(device_t dev, bhnd_service_t service)
{
 return (BHND_BUS_RETAIN_PROVIDER(device_get_parent(dev), dev,
     service));
}

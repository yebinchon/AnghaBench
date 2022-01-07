
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_service_registry {int dummy; } ;
struct bcm_platform {struct bhnd_service_registry services; } ;
typedef int device_t ;


 struct bcm_platform* bcm_get_platform () ;

__attribute__((used)) static struct bhnd_service_registry *
bhnd_nexus_get_service_registry(device_t dev, device_t child)
{
 struct bcm_platform *bp = bcm_get_platform();
 return (&bp->services);
}

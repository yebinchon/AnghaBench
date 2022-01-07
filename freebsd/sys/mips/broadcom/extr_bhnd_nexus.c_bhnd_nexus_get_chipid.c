
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhnd_chipid {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct bhnd_chipid const cid; } ;


 TYPE_1__* bcm_get_platform () ;

__attribute__((used)) static const struct bhnd_chipid *
bhnd_nexus_get_chipid(device_t dev, device_t child)
{
 return (&bcm_get_platform()->cid);
}

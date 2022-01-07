
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_info {int device; int vendor; } ;
typedef int bhnd_devclass_t ;


 int bhnd_find_core_class (int ,int ) ;

bhnd_devclass_t
bhnd_core_class(const struct bhnd_core_info *ci)
{
 return bhnd_find_core_class(ci->vendor, ci->device);
}

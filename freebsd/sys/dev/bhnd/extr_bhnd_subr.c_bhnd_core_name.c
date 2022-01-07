
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_core_info {int device; int vendor; } ;


 char const* bhnd_find_core_name (int ,int ) ;

const char *
bhnd_core_name(const struct bhnd_core_info *ci)
{
 return bhnd_find_core_name(ci->vendor, ci->device);
}

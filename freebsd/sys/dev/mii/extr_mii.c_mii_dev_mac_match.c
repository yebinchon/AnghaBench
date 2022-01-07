
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

int
mii_dev_mac_match(device_t parent, const char *name)
{

 return (strcmp(device_get_name(device_get_parent(
     device_get_parent(parent))), name) == 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {char const* ifc_name; } ;



const char *
ifc_name(struct if_clone *ifc)
{
 return (ifc->ifc_name);
}

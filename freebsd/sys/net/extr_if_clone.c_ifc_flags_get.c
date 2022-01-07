
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int ifc_flags; } ;



int
ifc_flags_get(struct if_clone *ifc)
{
 return (ifc->ifc_flags);
}

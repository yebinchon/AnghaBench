
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clone {int ifc_flags; } ;



void
ifc_flags_set(struct if_clone *ifc, int flags)
{
 ifc->ifc_flags = flags;
}

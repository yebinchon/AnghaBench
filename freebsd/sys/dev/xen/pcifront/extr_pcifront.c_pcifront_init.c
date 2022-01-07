
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int DPRINTF (char*) ;
 int SIF_INITDOMAIN ;
 int pcifront ;
 TYPE_1__* xen_start_info ;
 int xenbus_register_frontend (int *) ;

__attribute__((used)) static void
pcifront_init(void *unused)
{
 if ((xen_start_info->flags & SIF_INITDOMAIN))
  return;

 DPRINTF("xenbus registering\n");

 xenbus_register_frontend(&pcifront);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xs_attachcb; int xs_dev; } ;


 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int config_intrhook_disestablish (int *) ;
 TYPE_1__ xs ;

__attribute__((used)) static void
xs_attach_deferred(void *arg)
{

 bus_generic_probe(xs.xs_dev);
 bus_generic_attach(xs.xs_dev);

 config_intrhook_disestablish(&xs.xs_attachcb);
}

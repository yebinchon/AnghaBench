
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xs_dev; } ;


 int KASSERT (int,char*) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 TYPE_1__ xs ;

__attribute__((used)) static void
xs_attach_late(void *arg, int pending)
{

 KASSERT((pending == 1), ("xs late attach queued several times"));
 bus_generic_probe(xs.xs_dev);
 bus_generic_attach(xs.xs_dev);
}

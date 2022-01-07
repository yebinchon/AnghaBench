
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int dev; int ich; } ;


 int Giant ;
 int bus_generic_attach (int ) ;
 int config_intrhook_disestablish (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ida_startup(void *arg)
{
 struct ida_softc *ida;

 ida = arg;

 config_intrhook_disestablish(&ida->ich);

 mtx_lock(&Giant);
 bus_generic_attach(ida->dev);
 mtx_unlock(&Giant);
}

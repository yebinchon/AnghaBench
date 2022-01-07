
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xencons_priv {TYPE_1__* ops; int intr_handle; } ;
struct tty {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int (* init ) (int ,struct tty*,int ) ;} ;


 struct tty* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int stub1 (int ,struct tty*,int ) ;
 struct xencons_priv* tty_softc (struct tty*) ;
 int xen_intr_unbind (int *) ;
 int xencons_intr ;

__attribute__((used)) static int
xencons_resume(device_t dev)
{
 struct xencons_priv *cons;
 struct tty *tp;
 int err;

 tp = device_get_softc(dev);
 cons = tty_softc(tp);
 xen_intr_unbind(&cons->intr_handle);

 err = cons->ops->init(dev, tp, xencons_intr);
 if (err != 0) {
  device_printf(dev, "Unable to resume the console (%d)\n", err);
  return (err);
 }

 return (0);
}

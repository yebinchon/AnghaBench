
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xencons_priv {TYPE_1__* ops; int callout; } ;
struct tty {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int (* init ) (int ,struct tty*,int ) ;} ;


 int * EVENTHANDLER_REGISTER (int ,int ,struct tty*,int ) ;
 int SHUTDOWN_PRI_DEFAULT ;
 int callout_init_mtx (int *,int ,int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_softc (int ,struct tty*) ;
 int driver_name ;
 struct xencons_priv main_cons ;
 int shutdown_post_sync ;
 int stub1 (int ,struct tty*,int ) ;
 struct tty* tty_alloc (int *,struct xencons_priv*) ;
 int tty_getlock (struct tty*) ;
 int tty_makedev (struct tty*,int *,char*,int ,int ) ;
 int xencons_intr ;
 int xencons_shutdown ;
 int xencons_ttydevsw ;

__attribute__((used)) static int
xencons_attach(device_t dev)
{
 struct tty *tp;




 struct xencons_priv *cons;
 int err;

 cons = &main_cons;

 tp = tty_alloc(&xencons_ttydevsw, cons);
 tty_makedev(tp, ((void*)0), "%s%r", driver_name, 0);
 device_set_softc(dev, tp);

 callout_init_mtx(&cons->callout, tty_getlock(tp), 0);

 err = cons->ops->init(dev, tp, xencons_intr);
 if (err != 0) {
  device_printf(dev, "Unable to initialize the console (%d)\n",
      err);
  return (err);
 }


 if ((EVENTHANDLER_REGISTER(shutdown_post_sync, xencons_shutdown,
     tp, SHUTDOWN_PRI_DEFAULT)) == ((void*)0))
  device_printf(dev, "shutdown event registration failed!\n");

 return (0);
}

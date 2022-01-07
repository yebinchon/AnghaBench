
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {scalar_t__ evtchn; int intr_handle; } ;
struct tty {int dummy; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int ENODEV ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 struct xencons_priv* tty_softc (struct tty*) ;
 int xen_intr_bind_local_port (int ,scalar_t__,int *,int ,struct tty*,int,int *) ;

__attribute__((used)) static int
xencons_init_ring(device_t dev, struct tty *tp, driver_intr_t intr_handler)
{
 struct xencons_priv *cons;
 int err;

 cons = tty_softc(tp);

 if (cons->evtchn == 0)
  return (ENODEV);

 err = xen_intr_bind_local_port(dev, cons->evtchn, ((void*)0),
     intr_handler, tp, INTR_TYPE_TTY | INTR_MPSAFE, &cons->intr_handle);
 if (err != 0)
  return (err);

 return (0);
}

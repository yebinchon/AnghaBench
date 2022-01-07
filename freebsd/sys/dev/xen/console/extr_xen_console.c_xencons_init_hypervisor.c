
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int intr_handle; } ;
struct tty {int dummy; } ;
typedef int driver_intr_t ;
typedef int device_t ;


 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int VIRQ_CONSOLE ;
 int device_printf (int ,char*) ;
 struct xencons_priv* tty_softc (struct tty*) ;
 int xen_intr_bind_virq (int ,int ,int ,int *,int ,struct tty*,int,int *) ;

__attribute__((used)) static int
xencons_init_hypervisor(device_t dev, struct tty *tp,
    driver_intr_t intr_handler)
{
 struct xencons_priv *cons;
 int err;

 cons = tty_softc(tp);

 err = xen_intr_bind_virq(dev, VIRQ_CONSOLE, 0, ((void*)0),
     intr_handler, tp, INTR_TYPE_TTY | INTR_MPSAFE, &cons->intr_handle);
 if (err != 0)
  device_printf(dev, "Can't register console interrupt\n");

 return (err);
}

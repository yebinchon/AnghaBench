
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int ks_flags; struct cdev* ks_dev; } ;
typedef TYPE_1__ vkbd_state_t ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_14__ {scalar_t__ kb_data; } ;
typedef TYPE_2__ keyboard_t ;
struct TYPE_15__ {int (* probe ) (int,int *,int ) ;int (* init ) (int,TYPE_2__**,int *,int ) ;int (* enable ) (TYPE_2__*) ;int (* term ) (TYPE_2__*) ;int (* disable ) (TYPE_2__*) ;} ;
typedef TYPE_3__ keyboard_switch_t ;


 int EBUSY ;
 int ENXIO ;
 int KEYBOARD_NAME ;
 int OPEN ;
 int VKBD_LOCK (TYPE_1__*) ;
 int VKBD_UNLOCK (TYPE_1__*) ;
 int dev2unit (struct cdev*) ;
 int kbd_attach (TYPE_2__*) ;
 TYPE_3__* kbd_get_switch (int ) ;
 int stub1 (int,int *,int ) ;
 int stub2 (int,TYPE_2__**,int *,int ) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;
 int stub5 (TYPE_2__*) ;
 int stub6 (TYPE_2__*) ;

__attribute__((used)) static int
vkbd_dev_open(struct cdev *dev, int flag, int mode, struct thread *td)
{
 int unit = dev2unit(dev), error;
 keyboard_switch_t *sw = ((void*)0);
 keyboard_t *kbd = ((void*)0);
 vkbd_state_t *state = (vkbd_state_t *) dev->si_drv1;


 if (state == ((void*)0)) {
  if ((sw = kbd_get_switch(KEYBOARD_NAME)) == ((void*)0))
   return (ENXIO);

  if ((error = (*sw->probe)(unit, ((void*)0), 0)) != 0 ||
      (error = (*sw->init)(unit, &kbd, ((void*)0), 0)) != 0)
   return (error);

  state = (vkbd_state_t *) kbd->kb_data;

  if ((error = (*sw->enable)(kbd)) != 0) {
   (*sw->term)(kbd);
   return (error);
  }
  dev->si_drv1 = kbd->kb_data;
 }

 VKBD_LOCK(state);

 if (state->ks_flags & OPEN) {
  VKBD_UNLOCK(state);
  return (EBUSY);
 }

 state->ks_flags |= OPEN;
 state->ks_dev = dev;

 VKBD_UNLOCK(state);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
typedef int caddr_t ;
struct TYPE_4__ {int kbd; } ;


 int ENODEV ;
 int ENOIOCTL ;
 int KDSETLED ;
 int LOCK_MASK ;
 int kbdd_ioctl (int ,int ,int ) ;

__attribute__((used)) static int
update_kbd_leds(scr_stat *scp, int which)
{
    int error;

    which &= LOCK_MASK;
    error = kbdd_ioctl(scp->sc->kbd, KDSETLED, (caddr_t)&which);
    if (error == ENOIOCTL)
 error = ENODEV;
    return error;
}

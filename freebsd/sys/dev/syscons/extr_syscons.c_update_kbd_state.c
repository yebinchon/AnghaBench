
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
 int KDGKBSTATE ;
 int KDSKBSTATE ;
 int LOCK_MASK ;
 int kbdd_ioctl (int ,int ,int ) ;

__attribute__((used)) static int
update_kbd_state(scr_stat *scp, int new_bits, int mask)
{
    int state;
    int error;

    if (mask != LOCK_MASK) {
 error = kbdd_ioctl(scp->sc->kbd, KDGKBSTATE, (caddr_t)&state);
 if (error == ENOIOCTL)
     error = ENODEV;
 if (error)
     return error;
 state &= ~mask;
 state |= new_bits & mask;
    } else {
 state = new_bits & LOCK_MASK;
    }
    error = kbdd_ioctl(scp->sc->kbd, KDSKBSTATE, (caddr_t)&state);
    if (error == ENOIOCTL)
 error = ENODEV;
    return error;
}

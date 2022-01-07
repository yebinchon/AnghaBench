
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
typedef int caddr_t ;
struct TYPE_4__ {int kbd; } ;


 int ENODEV ;
 int ENOIOCTL ;
 int KDGKBSTATE ;
 int LOCK_MASK ;
 int kbdd_ioctl (int ,int ,int ) ;

__attribute__((used)) static int
save_kbd_state(scr_stat *scp)
{
    int state;
    int error;

    error = kbdd_ioctl(scp->sc->kbd, KDGKBSTATE, (caddr_t)&state);
    if (error == ENOIOCTL)
 error = ENODEV;
    if (error == 0) {
 scp->status &= ~LOCK_MASK;
 scp->status |= state;
    }
    return error;
}

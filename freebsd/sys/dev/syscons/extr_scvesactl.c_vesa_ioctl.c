
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_9__ {TYPE_2__* sc; } ;
typedef TYPE_3__ scr_stat ;
typedef int caddr_t ;
struct TYPE_8__ {TYPE_1__* adp; } ;
struct TYPE_7__ {int va_flags; } ;


 int ENODEV ;
 int ENOIOCTL ;
 char IOCGROUP (int) ;
 int IOC_DIRMASK ;
 int IOC_VOID ;
 int M_VESA_BASE ;
 int M_VESA_FULL_1280 ;
 int M_VESA_MODE_MAX ;
 TYPE_3__* SC_STAT (struct tty*) ;
 int V_ADP_MODECHANGE ;
 int prev_user_ioctl (struct tty*,int,int ,struct thread*) ;
 int sc_set_graphics_mode (TYPE_3__*,struct tty*,int) ;
 int sc_set_text_mode (TYPE_3__*,struct tty*,int,int ,int ,int ,int ) ;
 int stub1 (struct tty*,int,int ,struct thread*) ;

__attribute__((used)) static int
vesa_ioctl(struct tty *tp, u_long cmd, caddr_t data, struct thread *td)
{
 scr_stat *scp;
 int mode;

 scp = SC_STAT(tp);

 switch (cmd) {


 case 160: case 159:
 case 158: case 157:
 case 156:
  if (!(scp->sc->adp->va_flags & V_ADP_MODECHANGE))
   return ENODEV;
  return sc_set_text_mode(scp, tp, cmd & 0xff, 0, 0, 0, 0);


 case 138:
 case 142:
 case 141:
 case 140:
 case 139:
  if (!(scp->sc->adp->va_flags & V_ADP_MODECHANGE))
   return ENODEV;
  mode = (cmd & 0xff) + M_VESA_BASE;
  return sc_set_text_mode(scp, tp, mode, 0, 0, 0, 0);


 case 151: case 146:
 case 130:

 case 135:

 case 134:
 case 150: case 145:
 case 129:

 case 143: case 133:
 case 149: case 144:
 case 128:

 case 155: case 137:
 case 153: case 148:
 case 132:

 case 154: case 136:
 case 152: case 147:
 case 131:
  if (!(scp->sc->adp->va_flags & V_ADP_MODECHANGE))
   return ENODEV;
  mode = (cmd & 0xff) + M_VESA_BASE;
  return sc_set_graphics_mode(scp, tp, mode);
 default:
  if (IOCGROUP(cmd) == 'V') {
   if (!(scp->sc->adp->va_flags & V_ADP_MODECHANGE))
    return ENODEV;

   mode = (cmd & 0xff) + M_VESA_BASE;

   if (((cmd & IOC_DIRMASK) == IOC_VOID) &&
       (mode > M_VESA_FULL_1280) &&
       (mode < M_VESA_MODE_MAX))
    return sc_set_graphics_mode(scp, tp, mode);
  }
 }

 if (prev_user_ioctl)
  return (*prev_user_ioctl)(tp, cmd, data, td);
 else
  return ENOIOCTL;
}

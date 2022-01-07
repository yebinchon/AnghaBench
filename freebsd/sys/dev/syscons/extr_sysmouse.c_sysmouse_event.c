
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int id; int value; } ;
struct TYPE_7__ {int buttons; int x; int y; int z; } ;
struct TYPE_9__ {TYPE_2__ event; TYPE_1__ data; } ;
struct TYPE_10__ {int operation; TYPE_3__ u; } ;
typedef TYPE_4__ mouse_info_t ;
struct TYPE_11__ {int button; int dx; int dy; int dz; int flags; int obutton; } ;
 int MOUSE_MSC_PACKETSIZE ;
 int MOUSE_MSC_SYNC ;
 int MOUSE_POSCHANGED ;
 size_t MOUSE_STDBUTTONS ;
 int MOUSE_SYS_PACKETSIZE ;
 int imax (int ,int) ;
 int imin (int,int) ;
 int mouse_level ;
 TYPE_6__ mouse_status ;
 int smdev_evdev_write (int,int,int,int) ;
 int sysmouse_tty ;
 int tty_lock (int ) ;
 int tty_opened (int ) ;
 int tty_unlock (int ) ;
 int ttydisc_rint (int ,int,int ) ;
 int ttydisc_rint_done (int ) ;

int
sysmouse_event(mouse_info_t *info)
{

 static int butmap[8] = {
     130 | 129 | 128,
     129 | 128,
     130 | 128,
     128,
     130 | 129,
     129,
     130,
     0,
 };
 u_char buf[8];
 int x, y, z;
 int i, flags = 0;

 tty_lock(sysmouse_tty);

 switch (info->operation) {
 case 133:
         mouse_status.button = info->u.data.buttons;

 case 131:
  x = info->u.data.x;
  y = info->u.data.y;
  z = info->u.data.z;
  break;
 case 132:
  x = y = z = 0;
  if (info->u.event.value > 0)
   mouse_status.button |= info->u.event.id;
  else
   mouse_status.button &= ~info->u.event.id;
  break;
 default:
  goto done;
 }

 mouse_status.dx += x;
 mouse_status.dy += y;
 mouse_status.dz += z;
 mouse_status.flags |= ((x || y || z) ? MOUSE_POSCHANGED : 0)
         | (mouse_status.obutton ^ mouse_status.button);
 flags = mouse_status.flags;
 if (flags == 0)
  goto done;





 if (!tty_opened(sysmouse_tty))
  goto done;


 buf[0] = MOUSE_MSC_SYNC
   | butmap[mouse_status.button & MOUSE_STDBUTTONS];
 x = imax(imin(x, 255), -256);
 buf[1] = x >> 1;
 buf[3] = x - buf[1];
 y = -imax(imin(y, 255), -256);
 buf[2] = y >> 1;
 buf[4] = y - buf[2];
 for (i = 0; i < MOUSE_MSC_PACKETSIZE; ++i)
  ttydisc_rint(sysmouse_tty, buf[i], 0);
 if (mouse_level >= 1) {

         z = imax(imin(z, 127), -128);
         buf[5] = (z >> 1) & 0x7f;
         buf[6] = (z - (z >> 1)) & 0x7f;

         buf[7] = (~mouse_status.button >> 3) & 0x7f;
         for (i = MOUSE_MSC_PACKETSIZE; i < MOUSE_SYS_PACKETSIZE; ++i)
   ttydisc_rint(sysmouse_tty, buf[i], 0);
 }
 ttydisc_rint_done(sysmouse_tty);

done: tty_unlock(sysmouse_tty);
 return (flags);
}

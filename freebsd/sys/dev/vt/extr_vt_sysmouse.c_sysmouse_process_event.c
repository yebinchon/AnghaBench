
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int id; int value; } ;
struct TYPE_8__ {int buttons; int x; int y; int z; } ;
struct TYPE_10__ {TYPE_2__ event; TYPE_1__ data; } ;
struct TYPE_11__ {int operation; TYPE_3__ u; } ;
typedef TYPE_4__ mouse_info_t ;
struct TYPE_12__ {int button; int dx; int dy; int dz; int flags; int obutton; } ;
 int const MOUSE_MSC_SYNC ;
 int MOUSE_POSCHANGED ;
 size_t MOUSE_STDBUTTONS ;
 int MOUSE_SYS_PACKETSIZE ;
 int RANDOM_MOUSE ;
 int imax (int ,int) ;
 int imin (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int random_harvest_queue (TYPE_4__*,int,int ) ;
 int sysmouse_buf_store (unsigned char*) ;
 int sysmouse_evdev_store (int,int,int,int) ;
 int sysmouse_level ;
 int sysmouse_lock ;
 TYPE_5__ sysmouse_status ;
 int vt_mouse_event (int,int,int,int,int ,int ) ;

void
sysmouse_process_event(mouse_info_t *mi)
{

 static const int buttonmap[8] = {
     130 | 129 | 128,
     129 | 128,
     130 | 128,
     128,
     130 | 129,
     129,
     130,
     0,
 };
 unsigned char buf[MOUSE_SYS_PACKETSIZE];
 int x, y, iy, z;

 random_harvest_queue(mi, sizeof *mi, RANDOM_MOUSE);

 mtx_lock(&sysmouse_lock);
 switch (mi->operation) {
 case 133:
  sysmouse_status.button = mi->u.data.buttons;

 case 131:
  x = mi->u.data.x;
  y = mi->u.data.y;
  z = mi->u.data.z;
  break;
 case 132:
  x = y = z = 0;
  if (mi->u.event.value > 0)
   sysmouse_status.button |= mi->u.event.id;
  else
   sysmouse_status.button &= ~mi->u.event.id;
  break;
 default:
  goto done;
 }

 sysmouse_status.dx += x;
 sysmouse_status.dy += y;
 sysmouse_status.dz += z;
 sysmouse_status.flags |= ((x || y || z) ? MOUSE_POSCHANGED : 0) |
     (sysmouse_status.obutton ^ sysmouse_status.button);
 if (sysmouse_status.flags == 0)
  goto done;






 buf[0] = MOUSE_MSC_SYNC |
     buttonmap[sysmouse_status.button & MOUSE_STDBUTTONS];
 x = imax(imin(x, 255), -256);
 buf[1] = x >> 1;
 buf[3] = x - buf[1];
 iy = -imax(imin(y, 255), -256);
 buf[2] = iy >> 1;
 buf[4] = iy - buf[2];

        z = imax(imin(z, 127), -128);
        buf[5] = (z >> 1) & 0x7f;
        buf[6] = (z - (z >> 1)) & 0x7f;

        buf[7] = (~sysmouse_status.button >> 3) & 0x7f;

 sysmouse_buf_store(buf);


 mtx_unlock(&sysmouse_lock);
 vt_mouse_event(mi->operation, x, y, mi->u.event.id, mi->u.event.value,
     sysmouse_level);
 return;


done: mtx_unlock(&sysmouse_lock);
}

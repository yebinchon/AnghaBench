
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_5__ {int dz; int dy; int dx; int button; int obutton; int flags; } ;
typedef TYPE_1__ mousestatus_t ;
struct TYPE_6__ {int rate; int resolution; int level; int * syncmask; int packetsize; int protocol; int accelfactor; } ;
typedef TYPE_2__ mousemode_t ;
struct TYPE_7__ {int buttons; int hwid; int model; int type; int iftype; } ;
typedef TYPE_3__ mousehw_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOIOCTL ;




 int IOCBASECMD (int) ;
 scalar_t__ IOCGROUP (int) ;




 int MOUSE_IF_SYSMOUSE ;
 int MOUSE_MODEL_GENERIC ;
 int MOUSE_MOUSE ;

 int MOUSE_MSC_PACKETSIZE ;
 int MOUSE_MSC_SYNC ;
 int MOUSE_MSC_SYNCMASK ;
 int MOUSE_PROTO_MSC ;
 int MOUSE_PROTO_SYSMOUSE ;


 int MOUSE_SYS_PACKETSIZE ;
 int MOUSE_SYS_SYNC ;
 int MOUSE_SYS_SYNCMASK ;
 int SM_ASYNC ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char,int ) ;
 int sysmouse_flags ;
 int sysmouse_level ;
 int sysmouse_lock ;
 int sysmouse_sigio ;
 TYPE_1__ sysmouse_status ;

__attribute__((used)) static int
sysmouse_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{

 switch (cmd) {
 case 138:
  mtx_lock(&sysmouse_lock);
  if (*(int *)data)
   sysmouse_flags |= SM_ASYNC;
  else
   sysmouse_flags &= ~SM_ASYNC;
  mtx_unlock(&sysmouse_lock);
  return (0);
 case 136:
  return (0);
 case 137:
  *(int *)data = fgetown(&sysmouse_sigio);
  return (0);
 case 135:
  return (fsetown(*(int *)data, &sysmouse_sigio));
 case 134: {
  mousehw_t *hw = (mousehw_t *)data;

  hw->buttons = 10;
  hw->iftype = MOUSE_IF_SYSMOUSE;
  hw->type = MOUSE_MOUSE;
  hw->model = MOUSE_MODEL_GENERIC;
  hw->hwid = 0;

  return (0);
 }
 case 133:
  *(int *)data = sysmouse_level;
  return (0);
 case 132: {
  mousemode_t *mode = (mousemode_t *)data;

  mode->rate = -1;
  mode->resolution = -1;
  mode->accelfactor = 0;
  mode->level = sysmouse_level;

  switch (mode->level) {
  case 0:
   mode->protocol = MOUSE_PROTO_MSC;
   mode->packetsize = MOUSE_MSC_PACKETSIZE;
   mode->syncmask[0] = MOUSE_MSC_SYNCMASK;
   mode->syncmask[1] = MOUSE_MSC_SYNC;
   break;
  case 1:
   mode->protocol = MOUSE_PROTO_SYSMOUSE;
   mode->packetsize = MOUSE_SYS_PACKETSIZE;
   mode->syncmask[0] = MOUSE_SYS_SYNCMASK;
   mode->syncmask[1] = MOUSE_SYS_SYNC;
   break;
  }

  return (0);
 }
 case 131:
  mtx_lock(&sysmouse_lock);
  *(mousestatus_t *)data = sysmouse_status;

  sysmouse_status.flags = 0;
  sysmouse_status.obutton = sysmouse_status.button;
  sysmouse_status.dx = 0;
  sysmouse_status.dy = 0;
  sysmouse_status.dz = 0;
  mtx_unlock(&sysmouse_lock);

  return (0);
 case 129: {
  int level;

  level = *(int *)data;
  if (level != 0 && level != 1)
   return (EINVAL);

  sysmouse_level = level;
  return (0);
 }
 case 128: {
  mousemode_t *mode = (mousemode_t *)data;

  switch (mode->level) {
  case -1:

   break;
  case 0:
  case 1:
   sysmouse_level = mode->level;
   break;
  default:
   return (EINVAL);
  }

  return (0);
 }
 case 130:
  return (0);
 default:




  return (ENOIOCTL);
 }
}

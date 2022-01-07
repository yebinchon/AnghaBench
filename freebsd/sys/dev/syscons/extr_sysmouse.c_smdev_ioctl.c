
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_5__ {int dz; int dy; int dx; int button; int obutton; int flags; } ;
typedef TYPE_1__ mousestatus_t ;
struct TYPE_6__ {int level; int rate; int resolution; int * syncmask; int packetsize; int accelfactor; int protocol; } ;
typedef TYPE_2__ mousemode_t ;
struct TYPE_7__ {int buttons; int hwid; int model; int type; int iftype; } ;
typedef TYPE_3__ mousehw_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOIOCTL ;




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
 int mouse_level ;
 TYPE_1__ mouse_status ;

__attribute__((used)) static int
smdev_ioctl(struct tty *tp, u_long cmd, caddr_t data, struct thread *td)
{
 mousehw_t *hw;
 mousemode_t *mode;

 switch (cmd) {

 case 135:
  hw = (mousehw_t *)data;
  hw->buttons = 10;
  hw->iftype = MOUSE_IF_SYSMOUSE;
  hw->type = MOUSE_MOUSE;
  hw->model = MOUSE_MODEL_GENERIC;
  hw->hwid = 0;
  return 0;

 case 133:
  mode = (mousemode_t *)data;
  mode->level = mouse_level;
  switch (mode->level) {
  case 0:
   mode->protocol = MOUSE_PROTO_MSC;
   mode->rate = -1;
   mode->resolution = -1;
   mode->accelfactor = 0;
   mode->packetsize = MOUSE_MSC_PACKETSIZE;
   mode->syncmask[0] = MOUSE_MSC_SYNCMASK;
   mode->syncmask[1] = MOUSE_MSC_SYNC;
   break;

  case 1:
   mode->protocol = MOUSE_PROTO_SYSMOUSE;
   mode->rate = -1;
   mode->resolution = -1;
   mode->accelfactor = 0;
   mode->packetsize = MOUSE_SYS_PACKETSIZE;
   mode->syncmask[0] = MOUSE_SYS_SYNCMASK;
   mode->syncmask[1] = MOUSE_SYS_SYNC;
   break;
  }
  return 0;

 case 128:
  mode = (mousemode_t *)data;
  if (mode->level == -1)
   ;
  else if ((mode->level < 0) || (mode->level > 1))
   return EINVAL;
  else
   mouse_level = mode->level;
  return 0;

 case 134:
  *(int *)data = mouse_level;
  return 0;

 case 129:
  if ((*(int *)data < 0) || (*(int *)data > 1))
   return EINVAL;
  mouse_level = *(int *)data;
  return 0;

 case 132:
  *(mousestatus_t *)data = mouse_status;
  mouse_status.flags = 0;
  mouse_status.obutton = mouse_status.button;
  mouse_status.dx = 0;
  mouse_status.dy = 0;
  mouse_status.dz = 0;
  return 0;

 case 130:
 case 131:
  return ENODEV;
 }

 return (ENOIOCTL);
}

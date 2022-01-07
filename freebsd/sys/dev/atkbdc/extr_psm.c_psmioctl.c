
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_10__ {int infoMajor; } ;
typedef TYPE_2__ synapticshw_t ;
struct thread {int dummy; } ;
struct TYPE_15__ {int hwid; int model; int type; int iftype; int buttons; } ;
struct TYPE_14__ {int level; int rate; int resolution; int accelfactor; void* protocol; int * syncmask; int packetsize; } ;
struct TYPE_9__ {int rate; int resolution; } ;
struct TYPE_13__ {int dz; int dy; int dx; int button; int obutton; int flags; } ;
struct psm_softc {int flags; int async; TYPE_7__ hw; int kbdc; TYPE_6__ mode; TYPE_1__ dflt_mode; TYPE_5__ status; TYPE_2__ synhw; } ;
struct cdev {struct psm_softc* si_drv1; } ;
struct TYPE_11__ {int rate; int resolution; int accelfactor; void* protocol; } ;
typedef TYPE_3__ old_mousemode_t ;
struct TYPE_12__ {int hwid; int type; int iftype; int buttons; } ;
typedef TYPE_4__ old_mousehw_t ;
typedef TYPE_5__ mousestatus_t ;
typedef TYPE_6__ mousemode_t ;
typedef TYPE_7__ mousehw_t ;
struct TYPE_16__ {int len; int* buf; } ;
typedef TYPE_8__ mousedata_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int EIO ;
 int ENOTTY ;
 int MOUSE_MODEL_GENERIC ;
 void* MOUSE_PROTO_PS2 ;
 void* MOUSE_PROTO_SYSMOUSE ;
 int MOUSE_PS2_PACKETSIZE ;


 int MOUSE_RES_DEFAULT ;
 void* MOUSE_RES_HIGH ;
 void* MOUSE_RES_LOW ;
 void* MOUSE_RES_MEDIUMHIGH ;
 void* MOUSE_RES_MEDIUMLOW ;






 int MOUSE_SYS_PACKETSIZE ;
 int MOUSE_SYS_SYNC ;
 int MOUSE_SYS_SYNCMASK ;




 int PSM_LEVEL_MAX ;
 int PSM_LEVEL_MIN ;


 int PSM_NEED_SYNCBITS ;
 int UCHAR_MAX ;
 int block_mouse_data (struct psm_softc*,int*) ;
 int fgetown (int *) ;
 int fsetown (int,int *) ;
 int get_aux_id (int ) ;
 int get_mouse_status (int ,int*,int,int) ;
 void* set_mouse_resolution (int ,void*) ;
 void* set_mouse_sampling_rate (int ,int) ;
 int set_mouse_scaling (int ,int) ;
 int spltty () ;
 int splx (int) ;
 int unblock_mouse_data (struct psm_softc*,int) ;

__attribute__((used)) static int
psmioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag,
    struct thread *td)
{
 struct psm_softc *sc = dev->si_drv1;
 mousemode_t mode;
 mousestatus_t status;
 mousedata_t *data;
 int stat[3];
 int command_byte;
 int error = 0;
 int s;


 switch (cmd) {

 case 133:
  s = spltty();
  ((old_mousehw_t *)addr)->buttons = sc->hw.buttons;
  ((old_mousehw_t *)addr)->iftype = sc->hw.iftype;
  ((old_mousehw_t *)addr)->type = sc->hw.type;
  ((old_mousehw_t *)addr)->hwid = sc->hw.hwid & 0x00ff;
  splx(s);
  break;

 case 145:
  s = spltty();
  *(mousehw_t *)addr = sc->hw;
  if (sc->mode.level == 130)
   ((mousehw_t *)addr)->model = MOUSE_MODEL_GENERIC;
  splx(s);
  break;

 case 134:
  s = spltty();
  if (sc->synhw.infoMajor >= 4)
   *(synapticshw_t *)addr = sc->synhw;
  else
   error = EINVAL;
  splx(s);
  break;

 case 132:
  s = spltty();
  switch (sc->mode.level) {
  case 130:
   ((old_mousemode_t *)addr)->protocol = MOUSE_PROTO_PS2;
   break;
  case 128:
   ((old_mousemode_t *)addr)->protocol =
       MOUSE_PROTO_SYSMOUSE;
   break;
  case 129:
   ((old_mousemode_t *)addr)->protocol = MOUSE_PROTO_PS2;
   break;
  }
  ((old_mousemode_t *)addr)->rate = sc->mode.rate;
  ((old_mousemode_t *)addr)->resolution = sc->mode.resolution;
  ((old_mousemode_t *)addr)->accelfactor = sc->mode.accelfactor;
  splx(s);
  break;

 case 143:
  s = spltty();
  *(mousemode_t *)addr = sc->mode;
  if ((sc->flags & PSM_NEED_SYNCBITS) != 0) {
   ((mousemode_t *)addr)->syncmask[0] = 0;
   ((mousemode_t *)addr)->syncmask[1] = 0;
  }
  ((mousemode_t *)addr)->resolution =
   MOUSE_RES_LOW - sc->mode.resolution;
  switch (sc->mode.level) {
  case 130:
   ((mousemode_t *)addr)->protocol = MOUSE_PROTO_PS2;
   ((mousemode_t *)addr)->packetsize =
       MOUSE_PS2_PACKETSIZE;
   break;
  case 128:
   ((mousemode_t *)addr)->protocol = MOUSE_PROTO_SYSMOUSE;
   ((mousemode_t *)addr)->packetsize =
       MOUSE_SYS_PACKETSIZE;
   ((mousemode_t *)addr)->syncmask[0] = MOUSE_SYS_SYNCMASK;
   ((mousemode_t *)addr)->syncmask[1] = MOUSE_SYS_SYNC;
   break;
  case 129:

   ((mousemode_t *)addr)->protocol = MOUSE_PROTO_PS2;
   break;
  }
  splx(s);
  break;

 case 131:
 case 138:
  if (cmd == 131) {
   mode.rate = ((old_mousemode_t *)addr)->rate;
   if (((old_mousemode_t *)addr)->resolution > 0)
    mode.resolution =
        -((old_mousemode_t *)addr)->resolution - 1;
   else
    mode.resolution = 0;
   mode.accelfactor =
       ((old_mousemode_t *)addr)->accelfactor;
   mode.level = -1;
  } else
   mode = *(mousemode_t *)addr;


  if (mode.rate > UCHAR_MAX)
   return (EINVAL);
  if (mode.rate == 0)
   mode.rate = sc->dflt_mode.rate;
  else if (mode.rate == -1)

   ;
  else if (mode.rate < 0)
   return (EINVAL);
  if (mode.resolution >= UCHAR_MAX)
   return (EINVAL);
  if (mode.resolution >= 200)
   mode.resolution = MOUSE_RES_HIGH;
  else if (mode.resolution >= 100)
   mode.resolution = MOUSE_RES_MEDIUMHIGH;
  else if (mode.resolution >= 50)
   mode.resolution = MOUSE_RES_MEDIUMLOW;
  else if (mode.resolution > 0)
   mode.resolution = MOUSE_RES_LOW;
  if (mode.resolution == MOUSE_RES_DEFAULT)
   mode.resolution = sc->dflt_mode.resolution;
  else if (mode.resolution == -1)

   ;
  else if (mode.resolution < 0)
   mode.resolution = MOUSE_RES_LOW - mode.resolution;
  if (mode.level == -1)

   mode.level = sc->mode.level;
  else if ((mode.level < PSM_LEVEL_MIN) ||
      (mode.level > PSM_LEVEL_MAX))
   return (EINVAL);
  if (mode.accelfactor == -1)

   mode.accelfactor = sc->mode.accelfactor;
  else if (mode.accelfactor < 0)
   return (EINVAL);


  error = block_mouse_data(sc, &command_byte);
  if (error)
   return (error);


  if (mode.rate > 0)
   mode.rate = set_mouse_sampling_rate(sc->kbdc,
       mode.rate);
  if (mode.resolution >= 0)
   mode.resolution =
       set_mouse_resolution(sc->kbdc, mode.resolution);
  set_mouse_scaling(sc->kbdc, 1);
  get_mouse_status(sc->kbdc, stat, 0, 3);

  s = spltty();
  sc->mode.rate = mode.rate;
  sc->mode.resolution = mode.resolution;
  sc->mode.accelfactor = mode.accelfactor;
  sc->mode.level = mode.level;
  splx(s);

  unblock_mouse_data(sc, command_byte);
  break;

 case 144:
  *(int *)addr = sc->mode.level;
  break;

 case 139:
  if ((*(int *)addr < PSM_LEVEL_MIN) ||
      (*(int *)addr > PSM_LEVEL_MAX))
   return (EINVAL);
  sc->mode.level = *(int *)addr;
  break;

 case 142:
  s = spltty();
  status = sc->status;
  sc->status.flags = 0;
  sc->status.obutton = sc->status.button;
  sc->status.button = 0;
  sc->status.dx = 0;
  sc->status.dy = 0;
  sc->status.dz = 0;
  splx(s);
  *(mousestatus_t *)addr = status;
  break;

 case 140:
 case 141:
  data = (mousedata_t *)addr;
  if (data->len > sizeof(data->buf)/sizeof(data->buf[0]))
   return (EINVAL);

  error = block_mouse_data(sc, &command_byte);
  if (error)
   return (error);
  if ((data->len = get_mouse_status(sc->kbdc, data->buf,
      (cmd == 141) ? 1 : 0, data->len)) <= 0)
   error = EIO;
  unblock_mouse_data(sc, command_byte);
  break;


 case 136:
  mode.resolution = *(int *)addr;
  if (mode.resolution >= UCHAR_MAX)
   return (EINVAL);
  else if (mode.resolution >= 200)
   mode.resolution = MOUSE_RES_HIGH;
  else if (mode.resolution >= 100)
   mode.resolution = MOUSE_RES_MEDIUMHIGH;
  else if (mode.resolution >= 50)
   mode.resolution = MOUSE_RES_MEDIUMLOW;
  else if (mode.resolution > 0)
   mode.resolution = MOUSE_RES_LOW;
  if (mode.resolution == MOUSE_RES_DEFAULT)
   mode.resolution = sc->dflt_mode.resolution;
  else if (mode.resolution == -1)
   mode.resolution = sc->mode.resolution;
  else if (mode.resolution < 0)
   mode.resolution = MOUSE_RES_LOW - mode.resolution;

  error = block_mouse_data(sc, &command_byte);
  if (error)
   return (error);
  sc->mode.resolution =
      set_mouse_resolution(sc->kbdc, mode.resolution);
  if (sc->mode.resolution != mode.resolution)
   error = EIO;
  unblock_mouse_data(sc, command_byte);
  break;



 case 137:
  mode.rate = *(int *)addr;
  if (mode.rate > UCHAR_MAX)
   return (EINVAL);
  if (mode.rate == 0)
   mode.rate = sc->dflt_mode.rate;
  else if (mode.rate < 0)
   mode.rate = sc->mode.rate;

  error = block_mouse_data(sc, &command_byte);
  if (error)
   return (error);
  sc->mode.rate = set_mouse_sampling_rate(sc->kbdc, mode.rate);
  if (sc->mode.rate != mode.rate)
   error = EIO;
  unblock_mouse_data(sc, command_byte);
  break;



 case 135:
  if ((*(int *)addr <= 0) || (*(int *)addr > 2))
   return (EINVAL);

  error = block_mouse_data(sc, &command_byte);
  if (error)
   return (error);
  if (!set_mouse_scaling(sc->kbdc, *(int *)addr))
   error = EIO;
  unblock_mouse_data(sc, command_byte);
  break;



 case 146:
  error = block_mouse_data(sc, &command_byte);
  if (error)
   return (error);
  sc->hw.hwid &= ~0x00ff;
  sc->hw.hwid |= get_aux_id(sc->kbdc);
  *(int *)addr = sc->hw.hwid & 0x00ff;
  unblock_mouse_data(sc, command_byte);
  break;


 case 148:
 case 150:
  break;
 case 147:
  error = fsetown(*(int *)addr, &sc->async);
  break;
 case 149:
  *(int *) addr = fgetown(&sc->async);
  break;
 default:
  return (ENOTTY);
 }

 return (error);
}

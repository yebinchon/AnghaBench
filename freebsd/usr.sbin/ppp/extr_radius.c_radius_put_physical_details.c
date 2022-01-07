
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int rad; } ;
struct radius {int port_id_type; TYPE_5__ cx; } ;
struct physical {TYPE_4__* dl; TYPE_1__* handler; } ;
struct TYPE_9__ {TYPE_3__* bundle; } ;
struct TYPE_8__ {int unit; TYPE_2__* iface; } ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int type; } ;






 int LogERROR ;

 int RAD_ASYNC ;
 int RAD_ETHERNET ;
 int RAD_ISDN_SYNC ;
 int RAD_NAS_PORT ;
 int RAD_NAS_PORT_TYPE ;
 int RAD_VIRTUAL ;







 scalar_t__ getpid () ;
 int log_Printf (int ,char*,int ) ;
 int physical_Slot (struct physical*) ;
 int rad_close (int ) ;
 scalar_t__ rad_put_int (int ,int ,int) ;
 int rad_strerror (int ) ;

__attribute__((used)) static int
radius_put_physical_details(struct radius *rad, struct physical *p)
{
  int slot, type;

  type = RAD_VIRTUAL;
  if (p->handler)
    switch (p->handler->type) {
      case 136:
        type = RAD_ISDN_SYNC;
        break;

      case 129:
        type = RAD_ASYNC;
        break;

      case 138:
        type = RAD_ETHERNET;
        break;

      case 130:
      case 128:
      case 137:
      case 139:
      case 135:
        type = RAD_VIRTUAL;
        break;
    }

  if (rad_put_int(rad->cx.rad, RAD_NAS_PORT_TYPE, type) != 0) {
    log_Printf(LogERROR, "rad_put: rad_put_int: %s\n", rad_strerror(rad->cx.rad));
    rad_close(rad->cx.rad);
    return 0;
  }

  switch (rad->port_id_type) {
    case 132:
      slot = (int)getpid();
      break;
    case 133:
      slot = p->dl->bundle->iface->index;
      break;
    case 131:
      slot = p->dl->bundle->unit;
      break;
    case 134:
    default:
      slot = physical_Slot(p);
      break;
  }

  if (slot >= 0)
    if (rad_put_int(rad->cx.rad, RAD_NAS_PORT, slot) != 0) {
      log_Printf(LogERROR, "rad_put: rad_put_int: %s\n", rad_strerror(rad->cx.rad));
      rad_close(rad->cx.rad);
      return 0;
    }

  return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int load; } ;
struct TYPE_12__ {scalar_t__ delay; scalar_t__ necessity; } ;
struct TYPE_13__ {TYPE_4__ cd; } ;
struct ttydevice {int mbits; scalar_t__ carrier_seconds; TYPE_7__ Timer; TYPE_5__ dev; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_11__ {char* full; } ;
struct TYPE_9__ {scalar_t__ necessity; } ;
struct TYPE_10__ {TYPE_1__ cd; } ;
struct physical {scalar_t__ fd; TYPE_6__ link; int dl; TYPE_3__ name; TYPE_2__ cfg; int handler; } ;


 scalar_t__ CD_DEFAULT ;
 scalar_t__ CD_REQUIRED ;
 int CLOSE_NORMAL ;
 int LogDEBUG ;
 int LogPHASE ;
 int LogWARN ;
 scalar_t__ Online (struct ttydevice*) ;
 int SECTICKS ;
 int TIOCMGET ;
 int TIOCM_CD ;
 int datalink_Down (int ,int ) ;
 struct ttydevice* device2tty (int ) ;
 scalar_t__ ioctl (scalar_t__,int ,int*) ;
 int log_Printf (int ,char*,int ,...) ;
 int timer_Start (TYPE_7__*) ;
 int timer_Stop (TYPE_7__*) ;

__attribute__((used)) static void
tty_Timeout(void *data)
{
  struct physical *p = data;
  struct ttydevice *dev = device2tty(p->handler);
  int ombits, change;

  timer_Stop(&dev->Timer);
  dev->Timer.load = SECTICKS;
  timer_Start(&dev->Timer);
  ombits = dev->mbits;

  if (p->fd >= 0) {
    if (ioctl(p->fd, TIOCMGET, &dev->mbits) < 0) {

      if (p->cfg.cd.necessity != CD_DEFAULT)
        log_Printf(LogWARN, "%s: Carrier ioctl not supported, "
                   "using ``set cd off''\n", p->link.name);
      timer_Stop(&dev->Timer);
      dev->mbits = TIOCM_CD;
      return;
    }
  } else
    dev->mbits = 0;

  if (ombits == -1) {

    if (Online(dev))
      log_Printf(LogPHASE, "%s: %s: CD detected\n", p->link.name, p->name.full);
    else if (++dev->carrier_seconds >= dev->dev.cd.delay) {
      if (dev->dev.cd.necessity == CD_REQUIRED)
        log_Printf(LogPHASE, "%s: %s: Required CD not detected\n",
                   p->link.name, p->name.full);
      else {
        log_Printf(LogPHASE, "%s: %s doesn't support CD\n",
                   p->link.name, p->name.full);
        dev->mbits = TIOCM_CD;
      }
      timer_Stop(&dev->Timer);

    } else {

      log_Printf(LogDEBUG, "%s: %s: Still no carrier (%d/%d)\n",
                 p->link.name, p->name.full, dev->carrier_seconds,
                 dev->dev.cd.delay);
      dev->mbits = -1;
    }
  } else {
    change = ombits ^ dev->mbits;
    if (change & TIOCM_CD) {
      if (dev->mbits & TIOCM_CD)
        log_Printf(LogDEBUG, "%s: offline -> online\n", p->link.name);
      else {
        log_Printf(LogDEBUG, "%s: online -> offline\n", p->link.name);
        log_Printf(LogPHASE, "%s: Carrier lost\n", p->link.name);
        datalink_Down(p->dl, CLOSE_NORMAL);
        timer_Stop(&dev->Timer);
      }
    } else
      log_Printf(LogDEBUG, "%s: Still %sline\n", p->link.name,
                 Online(dev) ? "on" : "off");
  }
}

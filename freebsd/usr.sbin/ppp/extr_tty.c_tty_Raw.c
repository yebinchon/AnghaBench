
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttydevice {int mbits; } ;
struct termios {int c_cflag; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {scalar_t__ rts_cts; } ;
struct physical {scalar_t__ type; scalar_t__ fd; TYPE_2__ link; TYPE_1__ cfg; int handler; } ;


 int CCTS_OFLOW ;
 int CLOCAL ;
 int CRTS_IFLOW ;
 int F_GETFL ;
 int F_SETFL ;
 int HUPCL ;
 int LoadLineDiscipline (struct physical*) ;
 int LogDEBUG ;
 int LogWARN ;
 int O_NONBLOCK ;
 int Online (struct ttydevice*) ;
 scalar_t__ PHYS_DEDICATED ;
 scalar_t__ PHYS_DIRECT ;
 int TCSANOW ;
 int cfmakeraw (struct termios*) ;
 struct ttydevice* device2tty (int ) ;
 int fcntl (scalar_t__,int ,int) ;
 int log_Printf (int ,char*,int ,...) ;
 int physical_IsSync (struct physical*) ;
 int tcgetattr (scalar_t__,struct termios*) ;
 int tcsetattr (scalar_t__,int ,struct termios*) ;

__attribute__((used)) static int
tty_Raw(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);
  struct termios ios;
  int oldflag;

  log_Printf(LogDEBUG, "%s: Entering tty_Raw\n", p->link.name);

  if (p->type != PHYS_DIRECT && p->fd >= 0 && !Online(dev))
    log_Printf(LogDEBUG, "%s: Raw: descriptor = %d, mbits = %x\n",
              p->link.name, p->fd, dev->mbits);

  if (!physical_IsSync(p)) {

    if (!LoadLineDiscipline(p))

    {
      tcgetattr(p->fd, &ios);
      cfmakeraw(&ios);
      if (p->cfg.rts_cts)
        ios.c_cflag |= CLOCAL | CCTS_OFLOW | CRTS_IFLOW;
      else
        ios.c_cflag |= CLOCAL;

      if (p->type != PHYS_DEDICATED)
        ios.c_cflag |= HUPCL;

      if (tcsetattr(p->fd, TCSANOW, &ios) == -1)
        log_Printf(LogWARN, "%s: tcsetattr: Failed configuring device\n",
                   p->link.name);
    }
  }

  oldflag = fcntl(p->fd, F_GETFL, 0);
  if (oldflag < 0)
    return 0;
  fcntl(p->fd, F_SETFL, oldflag | O_NONBLOCK);

  return 1;
}

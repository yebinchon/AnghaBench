
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttydevice {int mbits; int Timer; } ;
struct termios {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct physical {scalar_t__ fd; TYPE_1__ link; int handler; } ;


 int B0 ;
 int LogWARN ;
 scalar_t__ Online (struct ttydevice*) ;
 int TCSANOW ;
 int TIOCM_DTR ;
 int cfsetspeed (struct termios*,int ) ;
 struct ttydevice* device2tty (int ) ;
 int log_Printf (int ,char*,int ) ;
 int tcgetattr (scalar_t__,struct termios*) ;
 int tcsetattr (scalar_t__,int ,struct termios*) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
tty_Offline(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);

  if (p->fd >= 0) {
    timer_Stop(&dev->Timer);
    dev->mbits &= ~TIOCM_DTR;
    if (Online(dev)) {
      struct termios tio;

      tcgetattr(p->fd, &tio);
      if (cfsetspeed(&tio, B0) == -1 || tcsetattr(p->fd, TCSANOW, &tio) == -1)
        log_Printf(LogWARN, "%s: Unable to set physical to speed 0\n",
                   p->link.name);
    }
  }
}

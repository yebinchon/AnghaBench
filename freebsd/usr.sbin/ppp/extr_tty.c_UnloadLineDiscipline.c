
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int fd; int disc; scalar_t__ speed; } ;
struct ttydevice {int cs; char* hook; TYPE_2__ dev; TYPE_1__ real; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct physical {int fd; TYPE_3__ link; int handler; } ;


 scalar_t__ ID0ioctl (int,int ,int *) ;
 int LogPHASE ;
 int LogWARN ;
 int PHYSICAL_NOFORCE ;
 int TIOCSETD ;
 int close (int) ;
 struct ttydevice* device2tty (int ) ;
 scalar_t__ isngtty (struct ttydevice*) ;
 int log_Printf (int ,char*,scalar_t__) ;
 int physical_SetSpeed (struct physical*,scalar_t__) ;
 int physical_SetupStack (struct physical*,int ,int ) ;

__attribute__((used)) static void
UnloadLineDiscipline(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);

  if (isngtty(dev)) {
    if (!physical_SetSpeed(p, dev->real.speed))
      log_Printf(LogWARN, "Couldn't reset tty speed to %d\n", dev->real.speed);
    dev->real.speed = 0;
    close(p->fd);
    p->fd = dev->real.fd;
    dev->real.fd = -1;
    close(dev->cs);
    dev->cs = -1;
    *dev->hook = '\0';
    if (ID0ioctl(p->fd, TIOCSETD, &dev->real.disc) == 0) {
      physical_SetupStack(p, dev->dev.name, PHYSICAL_NOFORCE);
      log_Printf(LogPHASE, "%s: Unloaded netgraph tty line discipline\n",
                 p->link.name);
    } else
      log_Printf(LogWARN, "%s: Failed to unload netgraph tty line discipline\n",
                 p->link.name);
  }
}

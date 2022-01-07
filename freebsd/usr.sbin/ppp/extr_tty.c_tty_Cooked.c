
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttydevice {int ios; } ;
struct TYPE_2__ {int name; } ;
struct physical {int fd; TYPE_1__ link; int handler; } ;


 int F_GETFL ;
 int F_SETFL ;
 int LogWARN ;
 int O_NONBLOCK ;
 int TCIOFLUSH ;
 int TCSAFLUSH ;
 int UnloadLineDiscipline (struct physical*) ;
 struct ttydevice* device2tty (int ) ;
 int fcntl (int ,int ,int) ;
 int log_Printf (int ,char*,int ) ;
 int physical_IsSync (struct physical*) ;
 int tcflush (int ,int ) ;
 int tcsetattr (int ,int ,int *) ;
 int tty_Offline (struct physical*) ;

__attribute__((used)) static void
tty_Cooked(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);
  int oldflag;

  tty_Offline(p);

  tcflush(p->fd, TCIOFLUSH);

  if (!physical_IsSync(p) && tcsetattr(p->fd, TCSAFLUSH, &dev->ios) == -1)
    log_Printf(LogWARN, "%s: tcsetattr: Unable to restore device settings\n",
               p->link.name);


  UnloadLineDiscipline(p);


  if ((oldflag = fcntl(p->fd, F_GETFL, 0)) != -1)
    fcntl(p->fd, F_SETFL, oldflag & ~O_NONBLOCK);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct termios {int c_cflag; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {int parity; } ;
struct physical {scalar_t__ fd; TYPE_1__ link; TYPE_2__ cfg; } ;


 int CSIZE ;
 int GetParityValue (char const*) ;
 int LogWARN ;
 int PARENB ;
 int PARODD ;
 int TCSADRAIN ;
 int log_Printf (int ,char*,int ,char const*) ;
 int tcgetattr (scalar_t__,struct termios*) ;
 int tcsetattr (scalar_t__,int ,struct termios*) ;

int
physical_SetParity(struct physical *p, const char *str)
{
  struct termios rstio;
  int val;

  val = GetParityValue(str);
  if (val > 0) {
    p->cfg.parity = val;
    if (p->fd >= 0) {
      tcgetattr(p->fd, &rstio);
      rstio.c_cflag &= ~(CSIZE | PARODD | PARENB);
      rstio.c_cflag |= val;
      tcsetattr(p->fd, TCSADRAIN, &rstio);
    }
    return 0;
  }
  log_Printf(LogWARN, "%s: %s: Invalid parity\n", p->link.name, str);
  return -1;
}

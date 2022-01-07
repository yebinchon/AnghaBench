
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termios {int c_lflag; int c_oflag; int c_iflag; } ;
struct TYPE_2__ {int c_iflag; } ;
struct prompt {int * TermMode; int fd_in; TYPE_1__ oldtio; } ;


 int ECHO ;
 int F_GETFL ;
 int F_SETFL ;
 int ICANON ;
 int ISIG ;
 int OPOST ;
 int O_NONBLOCK ;
 int TCSADRAIN ;
 int fcntl (int ,int ,int) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

void
prompt_TtyCommandMode(struct prompt *p)
{
  struct termios newtio;
  int stat;

  tcgetattr(p->fd_in, &newtio);
  newtio.c_lflag |= (ECHO | ISIG | ICANON);
  newtio.c_iflag = p->oldtio.c_iflag;
  newtio.c_oflag |= OPOST;
  tcsetattr(p->fd_in, TCSADRAIN, &newtio);

  stat = fcntl(p->fd_in, F_GETFL, 0);
  if (stat > 0) {
    stat |= O_NONBLOCK;
    fcntl(p->fd_in, F_SETFL, stat);
  }

  p->TermMode = ((void*)0);
}

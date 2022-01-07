
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; int* c_cc; int c_cflag; int c_oflag; scalar_t__ c_iflag; } ;
struct prompt {int fd_in; struct termios comtio; struct termios oldtio; } ;


 int CS8 ;
 int ECHO ;
 int F_GETFL ;
 int F_SETFL ;
 int ICANON ;
 int ISIG ;
 int OPOST ;
 int O_NONBLOCK ;
 int STDIN_FILENO ;
 int TCSANOW ;
 size_t VINTR ;
 size_t VMIN ;
 size_t VTIME ;
 int _POSIX_VDISABLE ;
 int fcntl (int,int ,int) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

void
prompt_TtyInit(struct prompt *p)
{
  int stat, fd = p ? p->fd_in : STDIN_FILENO;
  struct termios newtio;

  stat = fcntl(fd, F_GETFL, 0);
  if (stat > 0) {
    stat |= O_NONBLOCK;
    fcntl(fd, F_SETFL, stat);
  }

  if (p)
    newtio = p->oldtio;
  else
    tcgetattr(fd, &newtio);

  newtio.c_lflag &= ~(ECHO | ISIG | ICANON);
  newtio.c_iflag = 0;
  newtio.c_oflag &= ~OPOST;
  if (!p)
    newtio.c_cc[VINTR] = _POSIX_VDISABLE;
  newtio.c_cc[VMIN] = 1;
  newtio.c_cc[VTIME] = 0;
  newtio.c_cflag |= CS8;
  tcsetattr(fd, TCSANOW, &newtio);
  if (p)
    p->comtio = newtio;
}

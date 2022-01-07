
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {scalar_t__ Term; struct datalink* TermMode; int fd_in; int comtio; } ;
struct datalink {int dummy; } ;


 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int TCSADRAIN ;
 int fcntl (int ,int ,int) ;
 scalar_t__ stdout ;
 int tcsetattr (int ,int ,int *) ;

void
prompt_TtyTermMode(struct prompt *p, struct datalink *dl)
{
  int stat;

  if (p->Term == stdout)
    tcsetattr(p->fd_in, TCSADRAIN, &p->comtio);

  stat = fcntl(p->fd_in, F_GETFL, 0);
  if (stat > 0) {
    stat &= ~O_NONBLOCK;
    fcntl(p->fd_in, F_SETFL, stat);
  }
  p->TermMode = dl;
}

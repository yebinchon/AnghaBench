
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int tcgetattr (int ,struct termios*) ;

int
gettty(struct termios *t)
{
 int ret;

 while ((ret = tcgetattr(0, t)) == -1 && errno == EINTR)
  continue;
 return ret;
}

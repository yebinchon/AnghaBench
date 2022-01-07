
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 scalar_t__ EINTR ;
 int TCSADRAIN ;
 scalar_t__ errno ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static int
settty(struct termios *t)
{
 int ret;

 while ((ret = tcsetattr(0, TCSADRAIN, t)) == -1 && errno == EINTR)
  continue;
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct physical {int fd; } ;


 int SpeedToUnsigned (int ) ;
 int cfgetispeed (struct termios*) ;
 int tcgetattr (int ,struct termios*) ;

__attribute__((used)) static unsigned
tty_Speed(struct physical *p)
{
  struct termios ios;

  if (tcgetattr(p->fd, &ios) == -1)
    return 0;

  return SpeedToUnsigned(cfgetispeed(&ios));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyfd {int rfd; } ;
struct termios {int c_cflag; } ;


 int CLOCAL ;
 int TCSANOW ;
 int atexit (int ) ;
 int cfmakeraw (struct termios*) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 struct termios tio_stdio_orig ;
 int ttyclose ;
 scalar_t__ uart_stdio ;

__attribute__((used)) static void
ttyopen(struct ttyfd *tf)
{
 struct termios orig, new;

 tcgetattr(tf->rfd, &orig);
 new = orig;
 cfmakeraw(&new);
 new.c_cflag |= CLOCAL;
 tcsetattr(tf->rfd, TCSANOW, &new);
 if (uart_stdio) {
  tio_stdio_orig = orig;
  atexit(ttyclose);
 }
}

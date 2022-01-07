
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; } ;


 int FD ;
 int IXOFF ;
 int TCSADRAIN ;
 scalar_t__ strcmp (char*,char*) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 struct termios term ;

__attribute__((used)) static void
tandem(char *option)
{
 struct termios rmtty;

 tcgetattr(FD, &rmtty);
 if (strcmp(option, "on") == 0) {
  rmtty.c_iflag |= IXOFF;
  term.c_iflag |= IXOFF;
 } else {
  rmtty.c_iflag &= ~IXOFF;
  term.c_iflag &= ~IXOFF;
 }
 tcsetattr(FD, TCSADRAIN, &rmtty);
 tcsetattr(0, TCSADRAIN, &term);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; } ;


 int CRTSCTS ;
 int FD ;
 int TCSADRAIN ;
 scalar_t__ strcmp (char*,char*) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void
hardwareflow(char *option)
{
 struct termios rmtty;

 tcgetattr(FD, &rmtty);
 if (strcmp(option, "on") == 0)
  rmtty.c_iflag |= CRTSCTS;
 else
  rmtty.c_iflag &= ~CRTSCTS;
 tcsetattr(FD, TCSADRAIN, &rmtty);
}

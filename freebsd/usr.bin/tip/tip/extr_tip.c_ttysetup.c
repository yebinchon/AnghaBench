
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; int c_iflag; int c_lflag; int* c_cc; int c_oflag; } ;


 int CLOCAL ;
 int CRTSCTS ;
 int CS8 ;
 int CSIZE ;
 int DC ;
 int ECHO ;
 int FD ;
 int HARDWAREFLOW ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int ISIG ;
 int ISTRIP ;
 int IXOFF ;
 int OPOST ;
 int PARENB ;
 int TAND ;
 int TCSAFLUSH ;
 size_t VMIN ;
 size_t VTIME ;
 scalar_t__ boolean (int ) ;
 int cfsetspeed (struct termios*,int) ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int value (int ) ;

int
ttysetup(int speed)
{
 struct termios cntrl;

 if (tcgetattr(FD, &cntrl))
  return (-1);
 cfsetspeed(&cntrl, speed);
 cntrl.c_cflag &= ~(CSIZE|PARENB);
 cntrl.c_cflag |= CS8;
 if (boolean(value(DC)))
  cntrl.c_cflag |= CLOCAL;
 if (boolean(value(HARDWAREFLOW)))
  cntrl.c_cflag |= CRTSCTS;
 cntrl.c_iflag &= ~(ISTRIP|ICRNL);
 cntrl.c_oflag &= ~OPOST;
 cntrl.c_lflag &= ~(ICANON|ISIG|IEXTEN|ECHO);
 cntrl.c_cc[VMIN] = 1;
 cntrl.c_cc[VTIME] = 0;
 if (boolean(value(TAND)))
  cntrl.c_iflag |= IXOFF;
 return (tcsetattr(FD, TCSAFLUSH, &cntrl));
}

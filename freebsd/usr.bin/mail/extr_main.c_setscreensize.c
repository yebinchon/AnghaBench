
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {scalar_t__ ws_col; scalar_t__ ws_row; } ;
struct termios {int dummy; } ;
typedef scalar_t__ speed_t ;


 scalar_t__ B1200 ;
 scalar_t__ B9600 ;
 int TIOCGWINSZ ;
 scalar_t__ cfgetospeed (struct termios*) ;
 scalar_t__ ioctl (int,int ,char*) ;
 int realscreenheight ;
 int screenheight ;
 scalar_t__ screenwidth ;
 scalar_t__ tcgetattr (int,struct termios*) ;

void
setscreensize(void)
{
 struct termios tbuf;
 struct winsize ws;
 speed_t speed;

 if (ioctl(1, TIOCGWINSZ, (char *)&ws) < 0)
  ws.ws_col = ws.ws_row = 0;
 if (tcgetattr(1, &tbuf) < 0)
  speed = B9600;
 else
  speed = cfgetospeed(&tbuf);
 if (speed < B1200)
  screenheight = 9;
 else if (speed == B1200)
  screenheight = 14;
 else if (ws.ws_row != 0)
  screenheight = ws.ws_row;
 else
  screenheight = 24;
 if ((realscreenheight = ws.ws_row) == 0)
  realscreenheight = 24;
 if ((screenwidth = ws.ws_col) == 0)
  screenwidth = 80;
}

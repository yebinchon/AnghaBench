
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;


 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int ioctl (int ,int ,struct winsize*) ;
 int tgetnum (char*) ;
 int warnx (char*,int) ;

__attribute__((used)) static int
ttywidth(void)
{
 struct winsize ws;
 int width;

 if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) != -1)
  width = ws.ws_col;
 else if ((width = tgetnum("co")) == 0) {
  width = 80;
  warnx("cannot find terminal width; defaulted to %d", width);
 }

 return (width);
}

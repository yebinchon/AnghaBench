
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_row; } ;


 scalar_t__ EINTR ;
 int TIOCGWINSZ ;
 int VMSTAT_DEFAULT_LINES ;
 scalar_t__ errno ;
 int fileno (int ) ;
 int ioctl (int ,int ,struct winsize*) ;
 int stdout ;
 int winlines ;
 scalar_t__ wresized ;
 int xo_err (int,char*) ;

void
doresize(void)
{
 struct winsize w;
 int status;

 for (;;) {
  status = ioctl(fileno(stdout), TIOCGWINSZ, &w);
  if (status == -1 && errno == EINTR)
   continue;
  else if (status == -1)
   xo_err(1, "ioctl");
  if (w.ws_row > 3)
   winlines = w.ws_row - 3;
  else
   winlines = VMSTAT_DEFAULT_LINES;
  break;
 }




 wresized = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_row; } ;


 scalar_t__ EINTR ;
 int IOSTAT_DEFAULT_ROWS ;
 int TIOCGWINSZ ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int fileno (int ) ;
 int ioctl (int ,int ,struct winsize*) ;
 int stdout ;
 scalar_t__ wresized ;
 int wrows ;

void
doresize(void)
{
 int status;
 struct winsize w;

 for (;;) {
  status = ioctl(fileno(stdout), TIOCGWINSZ, &w);
  if (status == -1 && errno == EINTR)
   continue;
  else if (status == -1)
   err(1, "ioctl");
  if (w.ws_row > 3)
   wrows = w.ws_row - 3;
  else
   wrows = IOSTAT_DEFAULT_ROWS;
  break;
 }




 wresized = 0;
}

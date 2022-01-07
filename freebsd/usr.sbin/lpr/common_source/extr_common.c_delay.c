
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct printer {int dummy; } ;
typedef int fd_set ;


 int fatal (struct printer*,char*,int) ;
 int select (int ,int *,int *,int *,struct timeval*) ;

void
delay(int millisec)
{
 struct timeval tdelay;

 if (millisec <= 0 || millisec > 10000)
  fatal((struct printer *)0,
      "unreasonable delay period (%d)", millisec);
 tdelay.tv_sec = millisec / 1000;
 tdelay.tv_usec = millisec * 1000 % 1000000;
 (void) select(0, (fd_set *)0, (fd_set *)0, (fd_set *)0, &tdelay);
}

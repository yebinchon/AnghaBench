
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int Move_to (scalar_t__,int ) ;
 char* ctime (int *) ;
 int fputs (char*,int ) ;
 int lastline ;
 int printf (char*,char*) ;
 scalar_t__ screen_width ;
 scalar_t__ smart_terminal ;
 int stdout ;

void
i_timeofday(time_t *tod)
{
    if (smart_terminal)
    {
 Move_to(screen_width - 8, 0);
    }
    else
    {
 fputs("    ", stdout);
    }







    printf("%-8.8s\n", &(ctime(tod)[11]));
    lastline = 1;
}

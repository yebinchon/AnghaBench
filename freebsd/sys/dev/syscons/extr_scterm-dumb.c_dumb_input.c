
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
typedef int scr_stat ;


 int FALSE ;

__attribute__((used)) static int
dumb_input(scr_stat *scp, int c, struct tty *tp)
{
 return FALSE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ clear_ok ;
 int fflush (int ) ;
 int gbuf ;
 int putchar ;
 int stdout ;
 int tputs (int ,int,int ) ;

__attribute__((used)) static void
clear(void)
{

 if (clear_ok)
  tputs(gbuf, 1, putchar);
 fflush(stdout);
}

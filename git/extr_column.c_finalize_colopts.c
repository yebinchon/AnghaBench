
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int COL_AUTO ;
 unsigned int COL_ENABLED ;
 unsigned int COL_ENABLE_MASK ;
 int isatty (int) ;
 scalar_t__ pager_in_use () ;

int finalize_colopts(unsigned int *colopts, int stdout_is_tty)
{
 if ((*colopts & COL_ENABLE_MASK) == COL_AUTO) {
  if (stdout_is_tty < 0)
   stdout_is_tty = isatty(1);
  *colopts &= ~COL_ENABLE_MASK;
  if (stdout_is_tty || pager_in_use())
   *colopts |= COL_ENABLED;
 }
 return 0;
}

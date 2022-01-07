
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isatty (int) ;
 scalar_t__ pager_in_use () ;

__attribute__((used)) static int session_is_interactive(void)
{
 return isatty(1) || pager_in_use();
}

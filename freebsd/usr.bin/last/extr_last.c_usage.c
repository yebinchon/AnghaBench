
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int xo_error (char*) ;

__attribute__((used)) static void
usage(void)
{
 xo_error(
"usage: last [-swy] [-d [[CC]YY][MMDD]hhmm[.SS]] [-f file] [-h host]\n"
"            [-n maxrec] [-t tty] [user ...]\n");
 exit(1);
}

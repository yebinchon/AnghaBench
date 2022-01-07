
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
"usage: powerd [-v] [-a mode] [-b mode] [-i %%] [-m freq] [-M freq] [-n mode] [-p ival] [-r %%] [-s source] [-P pidfile]\n");
 exit(1);
}

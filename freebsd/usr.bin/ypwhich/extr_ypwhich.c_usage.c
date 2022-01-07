
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
     "usage: ypwhich [-t] [-d domain] [[-h] host]\n"
     "       ypwhich [-t] [-d domain] [-h host] -m [mname]\n"
     "       ypwhich -x\n");
 exit(1);
}

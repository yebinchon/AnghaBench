
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "Usage: %s [-O] [-i <inffile>] -s <sysfile> "
     "[-n devname] [-o outfile]\n", __progname);
 fprintf(stderr, "       %s -f <firmfile>\n", __progname);

 exit(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __progname ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(int s)
{

 fprintf(stderr, "Usage: %s [-e 0|L|B|<sz>] [-i 0|L|B|<sz>] [-o 0|L|B|<sz>] "
     "<cmd> [args ...]\n", __progname);
 exit(s);
}

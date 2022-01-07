
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n",
     "usage: truss [-cfaedDHS] [-o file] [-s strsize] -p pid",
     "       truss [-cfaedDHS] [-o file] [-s strsize] command [args]");
 exit(1);
}

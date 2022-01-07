
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

 fprintf(stderr, "pnfsdscopymr [-r recovered-DS-mounted-on-path] "
     "[-m soure-DS-mounted-on-path destination-DS-mounted-on-path] "
     "mds-filename");
 exit(1);
}

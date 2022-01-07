
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{

 fprintf(stderr, "usage: ethermulti -i ifname [-r] [-v]\n");
 exit(EXIT_FAILURE);
}

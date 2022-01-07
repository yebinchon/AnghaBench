
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{

 fprintf(stderr,
     "usage: ifmcstat [-i interface] [-f address family]"
     " [-v]"



     "\n");
 exit(EX_USAGE);
}

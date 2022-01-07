
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

 fprintf(stderr, "pnfsdsfile [-q/--quiet] [-z/--zerofh] "
     "[-c/--changeds <old dshostname> <new dshostname>] "
     "[-r/--zerods <dshostname>] "
     "[-s/--ds <dshostname>] "
     "<filename>\n");
 exit(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(int is_setfmac)
{

 if (is_setfmac)
  fprintf(stderr, "usage: setfmac [-Rhq] label file ...\n");
 else
  fprintf(stderr, "usage: setfsmac [-ehqvx] [-f specfile [...]] [-s specfile [...]] file ...\n");
 exit(1);
}

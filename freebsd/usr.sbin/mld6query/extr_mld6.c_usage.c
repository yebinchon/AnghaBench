
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{
 (void)fprintf(stderr, "usage: mld6query [-dgr] ifname [addr]\n");
 exit(1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "%s",
  "usage: pciconf -l [-BbcevV] [device]\n"
  "       pciconf -a device\n"
  "       pciconf -r [-b | -h] device addr[:addr2]\n"
  "       pciconf -w [-b | -h] device addr value\n"
  "       pciconf -D [-b | -h | -x] device bar [start [count]]"
  "\n");
 exit(1);
}

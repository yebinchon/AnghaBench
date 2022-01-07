
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
    "usage: boot0cfg [-Bv] [-b boot0] [-d drive] [-f file] [-m mask]",
    "                [-o options] [-s slice] [-t ticks] disk");
    exit(1);
}


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
 fprintf(stderr, "usage: m4 [-EgPs] [-Dname[=value]] [-d flags] "
   "[-I dirname] [-o filename]\n"
   "\t[-t macro] [-Uname] [file ...]\n");
 exit(1);
}

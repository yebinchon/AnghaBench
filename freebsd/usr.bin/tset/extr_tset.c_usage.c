
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

void
usage(void)
{
 (void)fprintf(stderr, "%s\n%s\n",
"usage: tset  [-IQrSs] [-] [-e ch] [-i ch] [-k ch] [-m mapping] [terminal]",
"       reset [-IQrSs] [-] [-e ch] [-i ch] [-k ch] [-m mapping] [terminal]");
 exit(1);
}

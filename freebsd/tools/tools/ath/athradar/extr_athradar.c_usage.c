
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void
usage(const char *progname)
{
 printf("Usage:\n");
 printf("\t%s: [-i <interface>] <cmd> (<arg>)\n", progname);
 printf("\t%s: [-h]\n", progname);
 printf("\n");
 printf("Valid commands:\n");
 printf("\tget:\t\tGet current radar parameters\n");
 printf("\tset <param> <value>:\t\tSet radar parameter\n");
}

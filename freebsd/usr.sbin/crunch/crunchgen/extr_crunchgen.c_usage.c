
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stderr ;

void
usage(void)
{
 fprintf(stderr, "%s%s\n\t%s%s\n", "usage: crunchgen [-foq] ",
     "[-h <makefile-header-name>] [-m <makefile>]",
     "[-p <obj-prefix>] [-c <c-file-name>] [-e <exec-file>] ",
     "<conffile>");
 exit(1);
}

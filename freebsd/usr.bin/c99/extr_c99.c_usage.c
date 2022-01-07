
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
 (void)fprintf(stderr, "%s\n%s\n",
"usage: c99 [-cEgs] [-D name[=value]] ... [-I directory] ... [-L directory] ...",
"       [-o outfile] [-O optlevel] [-U name] ... operand ...");
 exit(1);
}


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
 fprintf(stderr, "%s\n",
"usage: lpr [-Pprinter] [-#num] [-C class] [-J job] [-T title] [-U user]\n"
 "\t[-Z daemon-options] [-i[numcols]] [-i[numcols]] [-1234 font]\n"
 "\t[-L locale] [-wnum] [-cdfghlnmprstv] [name ...]");
 exit(1);
}

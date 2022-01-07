
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"usage: c89 [-cEgOs] [-D name[=value]] ... [-I directory] ... [-L directory] ...\n"
"           [-o outfile] [-U name] ... operand ...\n"
"\n"
"       where operand is one or more of file.c, file.o, file.a\n"
"       or -llibrary\n");
 exit(1);
}

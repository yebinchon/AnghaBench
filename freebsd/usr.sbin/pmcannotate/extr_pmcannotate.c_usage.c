
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *progname)
{

 fprintf(stderr,
     "usage: %s [-a] [-h] [-k kfile] [-l lb] pmcraw.out binary\n",
     progname);
 exit(EXIT_SUCCESS);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *progname)
{

 fprintf(stderr, "usage: %s [-d] [-t] [-h] [-v] [-f dsdt_input] "
   "[-o dsdt_output]\n", progname);
 fprintf(stderr, "To send ASL:\n\t%s -dt | gzip -c9 > foo.asl.gz\n",
     progname);
 exit(1);
}

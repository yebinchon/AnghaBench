
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
usage(const char *progname)
{
 printf("Usage:\n");
 printf("\t%s: [alg] [test] [runs] [elt_power]\n", progname);
 printf("\n");
 printf("Valid algs:\n");



 printf("\theap merge quick\n");

 printf("Valid tests:\n");
 printf("\trand sort part rev\n");
 printf("\trand: Random element array \n");
 printf("\tsort: Increasing order array \n");
 printf("\tpart: Partially ordered array\n");
 printf("\trev: Decreasing order array\n");
 printf("Run the algorithm [runs] times with 2^[elt_power] elements\n");
 exit(EX_USAGE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* program ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "usage: %s\t[-K] [-V] [-d|-default] [-h|-help] "
     "[-l|-lang language]\n\t\t[-p|-print] [-r|-restore] [-s|-show] "
     "[-v|-verbose]\n", program);
 exit(1);
}

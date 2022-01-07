
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,int ) ;
 int getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,
     "Usage:\t%1$s [-cs] -f <from_code> -t <to_code> [file ...]\n"
     "\t%1$s -f <from_code> [-cs] [-t <to_code>] [file ...]\n"
     "\t%1$s -t <to_code> [-cs] [-f <from_code>] [file ...]\n"
     "\t%1$s -l\n", getprogname());
 exit(1);
}

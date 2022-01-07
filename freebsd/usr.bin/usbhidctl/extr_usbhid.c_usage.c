
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
                "usage: %s -f device "
                "[-l] [-n] [-r] [-t tablefile] [-v] [-x] [-z] name ...\n",
                getprogname());
 fprintf(stderr,
                "       %s -f device "
                "[-l] [-n] [-r] [-t tablefile] [-v] [-x] [-z] -a\n",
                getprogname());
 fprintf(stderr,
                "       %s -f device "
                "[-t tablefile] [-v] [-z] -w name=value\n",
                getprogname());
 exit(1);
}

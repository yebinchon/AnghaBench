
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char*) ;
 int exit (int) ;
 scalar_t__ get_int_arg (char*,unsigned int*) ;

__attribute__((used)) static int
get_sched_param(int argc, char *argv[], int pos, unsigned int *valp)
{
 if (pos + 1 >= argc)
  errx(1, "missing value for %s", argv[pos]);
 if (get_int_arg(argv[pos + 1], valp))
  exit(1);
 return 0;
}

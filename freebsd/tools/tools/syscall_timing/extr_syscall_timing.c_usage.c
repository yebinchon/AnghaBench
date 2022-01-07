
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* t_name; } ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 TYPE_1__* tests ;
 int tests_count ;

__attribute__((used)) static void
usage(void)
{
 int i;

 fprintf(stderr, "syscall_timing [-i iterations] [-l loops] "
     "[-p path] [-s seconds] test\n");
 for (i = 0; i < tests_count; i++)
  fprintf(stderr, "  %s\n", tests[i].t_name);
 exit(-1);
}


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
 fprintf(stderr, "usage: diff3 [-3aAeEimTxX] [-L lable1] [-L label2] "
     "[ -L label3] file1 file2 file3\n");
 exit (2);
}

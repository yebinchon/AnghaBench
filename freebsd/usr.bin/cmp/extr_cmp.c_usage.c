
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_EXIT ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 (void)fprintf(stderr,
     "usage: cmp [-l | -s | -x] [-hz] file1 file2 [skip1 [skip2]]\n");
 exit(ERR_EXIT);
}

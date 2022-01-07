
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int act (char*) ;
 int err (int,char*) ;
 int exit (int) ;
 int fork () ;
 int nitems (int *) ;
 int printf (char*) ;
 int setup (int) ;
 int * stk ;
 int * tmpstk ;

int
main(int argc, char *argv[])
{
 int child;

 if (argc != 2) {
  printf(
     "Usage: popss [bound|int1|int3|into|int80|syscall|sysenter]\n");
  exit(1);
 }
 stk = &tmpstk[nitems(tmpstk) - 1];
 child = fork();
 if (child == -1)
  err(1, "fork");
 if (child == 0)
  act(argv[1]);
 else
  setup(child);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 unsigned int nitems (int*) ;
 int pipe (int*) ;
 int printf (char*) ;

int
main(void)
{
 int pipes[10000];
 unsigned int i;

 for (i = 0; i < nitems(pipes); i++)
  (void)pipe(&pipes[i]);
 printf("PASS\n");

 exit(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kdb_active ;
 int kdb_backtrace () ;
 int * kdb_jmpbufp ;
 int longjmp (int *,int) ;
 int printf (char*) ;

void
kdb_reenter(void)
{

 if (!kdb_active || kdb_jmpbufp == ((void*)0))
  return;

 printf("KDB: reentering\n");
 kdb_backtrace();
 longjmp(kdb_jmpbufp, 1);

}

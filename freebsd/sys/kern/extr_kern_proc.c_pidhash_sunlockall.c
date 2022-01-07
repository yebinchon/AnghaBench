
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;


 size_t pidhashlock ;
 int * pidhashtbl_lock ;
 int sx_sunlock (int *) ;

void
pidhash_sunlockall(void)
{
 u_long i;

 for (i = 0; i < pidhashlock + 1; i++)
  sx_sunlock(&pidhashtbl_lock[i]);
}

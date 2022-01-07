
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_store_rel_64 (int *,int ) ;
 int pvclock_last_cycles ;

void
pvclock_resume(void)
{

 atomic_store_rel_64(&pvclock_last_cycles, 0);
}

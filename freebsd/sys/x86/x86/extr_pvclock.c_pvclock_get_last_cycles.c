
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int atomic_load_acq_64 (int *) ;
 int pvclock_last_cycles ;

uint64_t
pvclock_get_last_cycles(void)
{

 return (atomic_load_acq_64(&pvclock_last_cycles));
}

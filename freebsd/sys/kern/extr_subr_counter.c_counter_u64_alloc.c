
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int counter_u64_t ;


 int M_ZERO ;
 int pcpu_zone_64 ;
 int uma_zalloc_pcpu (int ,int) ;

counter_u64_t
counter_u64_alloc(int flags)
{

 return (uma_zalloc_pcpu(pcpu_zone_64, flags | M_ZERO));
}

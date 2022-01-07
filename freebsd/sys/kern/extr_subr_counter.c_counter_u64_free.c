
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int counter_u64_t ;


 int pcpu_zone_64 ;
 int uma_zfree_pcpu (int ,int ) ;

void
counter_u64_free(counter_u64_t c)
{

 uma_zfree_pcpu(pcpu_zone_64, c);
}

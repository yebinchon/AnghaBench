
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {size_t rte_cpu; } ;


 TYPE_1__* rss_table ;

u_int
rss_getcpu(u_int bucket)
{

 return (rss_table[bucket].rte_cpu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int t_Handle ;


 int BM_POOL_GetCounter (int ,int ) ;
 int e_BM_POOL_COUNTERS_CONTENT ;

uint32_t
bman_count(t_Handle pool)
{

 return (BM_POOL_GetCounter(pool, e_BM_POOL_COUNTERS_CONTENT));
}

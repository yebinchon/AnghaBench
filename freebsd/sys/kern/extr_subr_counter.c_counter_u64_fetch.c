
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int counter_u64_t ;


 int counter_u64_fetch_inline (int ) ;

uint64_t
counter_u64_fetch(counter_u64_t c)
{

 return (counter_u64_fetch_inline(c));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int counter_u64_t ;


 int counter_u64_zero (int ) ;

__attribute__((used)) static inline void
ena_reset_counters(counter_u64_t *begin, int size)
{
 counter_u64_t *end = (counter_u64_t *)((char *)begin + size);

 for (; begin < end; ++begin)
  counter_u64_zero(*begin);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cache_max_small_delta_size ;
 scalar_t__ delta_cache_size ;
 scalar_t__ max_delta_cache_size ;

__attribute__((used)) static int delta_cacheable(unsigned long src_size, unsigned long trg_size,
      unsigned long delta_size)
{
 if (max_delta_cache_size && delta_cache_size + delta_size > max_delta_cache_size)
  return 0;

 if (delta_size < cache_max_small_delta_size)
  return 1;


 if ((src_size >> 20) + (trg_size >> 21) > (delta_size >> 10))
  return 1;

 return 0;
}

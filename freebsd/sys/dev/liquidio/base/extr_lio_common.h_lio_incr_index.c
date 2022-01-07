
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static inline uint32_t
lio_incr_index(uint32_t index, uint32_t count, uint32_t max)
{
 if ((index + count) >= max)
  index = index + count - max;
 else
  index += count;

 return (index);
}

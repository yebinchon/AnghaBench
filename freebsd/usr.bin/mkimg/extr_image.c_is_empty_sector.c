
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;


 int assert (int) ;
 int secsz ;

__attribute__((used)) static int
is_empty_sector(void *buf)
{
 uint64_t *p = buf;
 size_t n, max;

 assert(((uintptr_t)p & 3) == 0);

 max = secsz / sizeof(uint64_t);
 for (n = 0; n < max; n++) {
  if (p[n] != 0UL)
   return (0);
 }
 return (1);
}

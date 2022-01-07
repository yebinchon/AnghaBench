
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int arc4random () ;

__attribute__((used)) static uint32_t
arc4random_uniform(uint32_t upper_bound)
{
 uint32_t r, min;

 if (upper_bound < 2)
  return 0;


 min = -upper_bound % upper_bound;







 for (;;) {
  r = arc4random();
  if (r >= min)
   break;
 }

 return r % upper_bound;
}

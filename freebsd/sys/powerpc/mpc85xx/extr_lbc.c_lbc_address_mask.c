
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int EINVAL ;

__attribute__((used)) static uint32_t
lbc_address_mask(uint32_t size)
{
 int n = 15;

 if (size == ~0)
  return (0);

 while (n < 32) {
  if (size == (1U << n))
   break;
  n++;
 }

 if (n == 32)
  return (EINVAL);

 return (0xffff8000 << (n - 15));
}

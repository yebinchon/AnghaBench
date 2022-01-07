
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned
reg_to_mux(unsigned reg, unsigned map)
{
 unsigned ret, bit;

 bit = (1u << 3);
 for (ret = 0; reg; reg--, bit >>= 1)
  if (map & bit)
   ret++;
 return (ret);
}

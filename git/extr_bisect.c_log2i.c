
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int log2i(int n)
{
 int log2 = 0;

 for (; n > 1; n >>= 1)
  log2++;

 return log2;
}

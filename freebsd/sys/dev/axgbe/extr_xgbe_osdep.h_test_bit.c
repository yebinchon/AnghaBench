
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
test_bit(int pos, unsigned long *p)
{
 unsigned long val;

 val = *p;
 return ((val & 1ul << pos) != 0);
}

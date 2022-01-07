
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;

__attribute__((used)) static inline int
lio_get_order(unsigned long size)
{
 int order;

 size = (size - 1) >> PAGE_SHIFT;
 order = 0;
 while (size) {
  order++;
  size >>= 1;
 }

 return (order);
}

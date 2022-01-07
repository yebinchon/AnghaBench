
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

__attribute__((used)) static inline const void *align_long(const void *expr)
{
  assert(!(((int)expr) & 3));
  return expr;
}

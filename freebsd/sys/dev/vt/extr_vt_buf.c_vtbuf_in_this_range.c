
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
vtbuf_in_this_range(int begin, int test, int end, int sz)
{

 begin %= sz;
 end %= sz;


 if (begin > end)
  return (test >= begin || test < end);
 else
  return (test >= begin && test < end);
}

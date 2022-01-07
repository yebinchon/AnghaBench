
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int omin (int,int) ;

__attribute__((used)) static inline off_t
xfsize(int i, int n, off_t off, off_t len)
{

 if (i == 0)
  return (omin(PAGE_SIZE - (off & PAGE_MASK), len));

 if (i == n - 1 && ((off + len) & PAGE_MASK) > 0)
  return ((off + len) & PAGE_MASK);

 return (PAGE_SIZE);
}

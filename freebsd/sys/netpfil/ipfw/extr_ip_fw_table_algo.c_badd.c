
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* caddr_t ;


 int memcpy (void*,void*,size_t) ;
 int memmove (void*,void*,size_t) ;

__attribute__((used)) static int
badd(const void *key, void *item, void *base, size_t nmemb,
    size_t size, int (*compar) (const void *, const void *))
{
 int min, max, mid, shift, res;
 caddr_t paddr;

 if (nmemb == 0) {
  memcpy(base, item, size);
  return (1);
 }


 min = 0;
 max = nmemb - 1;
 mid = 0;
 while (min <= max) {
  mid = (min + max) / 2;
  res = compar(key, (const void *)((caddr_t)base + mid * size));
  if (res == 0)
   return (0);

  if (res > 0)
   min = mid + 1;
  else
   max = mid - 1;
 }


 res = compar(key, (const void *)((caddr_t)base + mid * size));
 if (res > 0)
  shift = mid + 1;
 else
  shift = mid;

 paddr = (caddr_t)base + shift * size;
 if (nmemb > shift)
  memmove(paddr + size, paddr, (nmemb - shift) * size);

 memcpy(paddr, item, size);

 return (1);
}

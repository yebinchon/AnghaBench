
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int KASSERT (int,char*) ;
 scalar_t__ chancompar (int *,int *) ;
 int swap (int *,int *,size_t) ;

__attribute__((used)) static void
sort_channels(void *a, size_t n, size_t size)
{
 uint8_t *aa = a;
 uint8_t *ai, *t;

 KASSERT(n > 0, ("no channels"));
 for (ai = aa+size; --n >= 1; ai += size)
  for (t = ai; t > aa; t -= size) {
   uint8_t *u = t - size;
   if (chancompar(u, t) <= 0)
    break;
   swap(u, t, size);
  }
}

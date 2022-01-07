
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 scalar_t__ WOULD_OVERFLOW (size_t,size_t) ;
 void* malloc (size_t,struct malloc_type*,int) ;
 int panic (char*,size_t,size_t) ;

void *
mallocarray(size_t nmemb, size_t size, struct malloc_type *type, int flags)
{

 if (WOULD_OVERFLOW(nmemb, size))
  panic("mallocarray: %zu * %zu overflowed", nmemb, size);

 return (malloc(size * nmemb, type, flags));
}

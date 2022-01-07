
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 void* reallocarray (void*,size_t,size_t) ;

void *
breallocarray(void *p, size_t nmemb, size_t size)
{
 void *q;

 q = reallocarray(p, nmemb, size);
 if (q == ((void*)0))
  err(1, ((void*)0));
 return (q);
}

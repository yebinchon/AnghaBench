
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 int err (int,char*,size_t,size_t) ;

void *
xcalloc(size_t nmemb, size_t size)
{
 void *ptr;

 ptr = calloc(nmemb, size);
 if (ptr == ((void*)0))
  err(2, "xcalloc: allocating %zu * %zu bytes", nmemb, size);
 return ptr;
}

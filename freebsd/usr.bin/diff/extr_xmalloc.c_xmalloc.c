
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,size_t) ;
 int errx (int,char*) ;
 void* malloc (size_t) ;

void *
xmalloc(size_t size)
{
 void *ptr;

 if (size == 0)
  errx(2, "xmalloc: zero size");
 ptr = malloc(size);
 if (ptr == ((void*)0))
  err(2, "xmalloc: allocating %zu bytes", size);
 return ptr;
}

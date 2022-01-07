
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 void* malloc (size_t) ;

void *
bmalloc(size_t sz)
{
 void *p;

 p = malloc(sz);
 if (p == ((void*)0))
  err(1, ((void*)0));
 return (p);
}

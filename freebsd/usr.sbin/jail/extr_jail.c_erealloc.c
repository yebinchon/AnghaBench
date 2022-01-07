
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* realloc (void*,size_t) ;

void *
erealloc(void *ptr, size_t size)
{
 void *p;

 p = realloc(ptr, size);
 if (!p)
  err(1, "malloc");
 return p;
}

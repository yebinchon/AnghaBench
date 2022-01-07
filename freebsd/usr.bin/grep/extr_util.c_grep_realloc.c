
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* realloc (void*,size_t) ;

void *
grep_realloc(void *ptr, size_t size)
{

 if ((ptr = realloc(ptr, size)) == ((void*)0))
  err(2, "realloc");
 return (ptr);
}

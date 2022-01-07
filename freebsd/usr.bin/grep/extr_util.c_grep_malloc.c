
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* malloc (size_t) ;

void *
grep_malloc(size_t size)
{
 void *ptr;

 if ((ptr = malloc(size)) == ((void*)0))
  err(2, "malloc");
 return (ptr);
}

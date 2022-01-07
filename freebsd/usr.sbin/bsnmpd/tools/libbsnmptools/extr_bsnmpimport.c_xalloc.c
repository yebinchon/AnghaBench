
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,size_t) ;
 void* malloc (size_t) ;

__attribute__((used)) static void *
xalloc(size_t size)
{
 void *ptr;

 if ((ptr = malloc(size)) == ((void*)0))
  err(1, "allocing %zu bytes", size);

 return (ptr);
}

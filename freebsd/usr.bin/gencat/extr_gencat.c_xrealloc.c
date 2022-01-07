
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOMEM () ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void *
xrealloc(void *ptr, size_t size)
{
 if ((ptr = realloc(ptr, size)) == ((void*)0))
  NOMEM();
 return (ptr);
}

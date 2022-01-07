
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 int free (void*,struct malloc_type*) ;
 void* realloc (void*,size_t,struct malloc_type*,int) ;

void *
reallocf(void *addr, size_t size, struct malloc_type *mtp, int flags)
{
 void *mem;

 if ((mem = realloc(addr, size, mtp, flags)) == ((void*)0))
  free(addr, mtp);
 return (mem);
}

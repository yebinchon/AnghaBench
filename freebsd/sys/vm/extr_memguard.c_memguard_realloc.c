
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct malloc_type {int dummy; } ;


 int bcopy (void*,void*,int ) ;
 void* memguard_alloc (unsigned long,int) ;
 int memguard_free (void*) ;
 int min (unsigned long,int ) ;
 int trunc_page (uintptr_t) ;
 int * v2sizep (int ) ;

void *
memguard_realloc(void *addr, unsigned long size, struct malloc_type *mtp,
    int flags)
{
 void *newaddr;
 u_long old_size;






 if ((newaddr = memguard_alloc(size, flags)) == ((void*)0))
  return (((void*)0));


 old_size = *v2sizep(trunc_page((uintptr_t)addr));
 bcopy(addr, newaddr, min(size, old_size));
 memguard_free(addr);
 return (newaddr);
}

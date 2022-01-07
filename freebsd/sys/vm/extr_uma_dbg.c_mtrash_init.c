
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int dummy; } ;


 scalar_t__ is_memguard_addr (void*) ;
 int mtrash_dtor (void*,int,int *) ;

int
mtrash_init(void *mem, int size, int flags)
{
 struct malloc_type **ksp;






 mtrash_dtor(mem, size, ((void*)0));

 ksp = (struct malloc_type **)mem;
 ksp += (size / sizeof(struct malloc_type *)) - 1;
 *ksp = ((void*)0);
 return (0);
}

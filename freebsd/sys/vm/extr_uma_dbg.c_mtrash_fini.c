
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtrash_ctor (void*,int,int *,int ) ;

void
mtrash_fini(void *mem, int size)
{
 (void)mtrash_ctor(mem, size, ((void*)0), 0);
}

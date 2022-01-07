
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trash_ctor (void*,int,int *,int ) ;

void
trash_fini(void *mem, int size)
{
 (void)trash_ctor(mem, size, ((void*)0), 0);
}

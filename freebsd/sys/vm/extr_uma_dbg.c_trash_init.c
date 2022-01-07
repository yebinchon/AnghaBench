
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trash_dtor (void*,int,int *) ;

int
trash_init(void *mem, int size, int flags)
{
 trash_dtor(mem, size, ((void*)0));
 return (0);
}

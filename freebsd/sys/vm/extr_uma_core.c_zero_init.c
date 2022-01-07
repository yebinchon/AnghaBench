
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,int) ;

__attribute__((used)) static int
zero_init(void *mem, int size, int flags)
{
 bzero(mem, size);
 return (0);
}

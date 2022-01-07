
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_NOWAIT ;
 int XZ_DEC ;
 void* malloc (unsigned long,int ,int ) ;

void *
xz_malloc(unsigned long size)
{
 void *addr;

 addr = malloc(size, XZ_DEC, M_NOWAIT);
 return (addr);
}

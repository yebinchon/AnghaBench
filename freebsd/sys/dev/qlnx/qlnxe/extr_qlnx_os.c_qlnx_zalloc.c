
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ caddr_t ;


 int M_NOWAIT ;
 int M_QLNXBUF ;
 int bzero (scalar_t__,scalar_t__) ;
 scalar_t__ malloc (unsigned long,int ,int ) ;

void *
qlnx_zalloc(uint32_t size)
{
 caddr_t va;

 va = malloc((unsigned long)size, M_QLNXBUF, M_NOWAIT);
 bzero(va, size);
 return ((void *)va);
}

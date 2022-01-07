
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqisrc_softstate_t ;


 int M_NOWAIT ;
 int M_SMARTPQI ;
 int M_ZERO ;
 void* malloc (unsigned long,int ,int) ;

void *os_mem_alloc(pqisrc_softstate_t *softs, size_t size)
{
 void *addr = ((void*)0);



 addr = malloc((unsigned long)size, M_SMARTPQI,
   M_NOWAIT | M_ZERO);



 return addr;
}

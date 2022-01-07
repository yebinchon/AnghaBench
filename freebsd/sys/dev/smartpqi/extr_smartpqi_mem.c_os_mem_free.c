
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqisrc_softstate_t ;


 int M_SMARTPQI ;
 int free (void*,int ) ;

void os_mem_free(pqisrc_softstate_t *softs,
   char *addr, size_t size)
{


 free((void*)addr, M_SMARTPQI);


}

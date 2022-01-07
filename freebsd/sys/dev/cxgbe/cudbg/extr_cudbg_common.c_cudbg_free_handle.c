
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_CXGBE ;
 int free (void*,int ) ;

void
cudbg_free_handle(void *handle)
{

 free(handle, M_CXGBE);
}

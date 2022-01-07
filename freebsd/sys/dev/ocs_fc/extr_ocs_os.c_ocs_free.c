
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_os_handle_t ;


 int M_OCS ;
 int free (void*,int ) ;
 int printf (char*,void*,size_t) ;

void
ocs_free(ocs_os_handle_t os, void *addr, size_t size)
{

 free(addr, M_OCS);




}

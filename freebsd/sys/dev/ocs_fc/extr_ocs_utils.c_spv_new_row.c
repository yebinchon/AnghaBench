
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_os_handle_t ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 void** ocs_malloc (int ,int,int) ;

__attribute__((used)) static void
**spv_new_row(ocs_os_handle_t os, uint32_t rowcount)
{
 return ocs_malloc(os, sizeof(void*) * rowcount, OCS_M_ZERO | OCS_M_NOWAIT);
}

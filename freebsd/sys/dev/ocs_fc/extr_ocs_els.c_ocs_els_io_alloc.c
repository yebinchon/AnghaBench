
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ocs_node_t ;
typedef int ocs_io_t ;
typedef int ocs_els_role_e ;


 int OCS_ELS_RSP_LEN ;
 int * ocs_els_io_alloc_size (int *,int ,int ,int ) ;

ocs_io_t *
ocs_els_io_alloc(ocs_node_t *node, uint32_t reqlen, ocs_els_role_e role)
{
 return ocs_els_io_alloc_size(node, reqlen, OCS_ELS_RSP_LEN, role);
}

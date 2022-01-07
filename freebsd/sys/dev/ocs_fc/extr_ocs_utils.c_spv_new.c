
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* sparse_vector_t ;
typedef int ocs_os_handle_t ;
struct TYPE_4__ {int max_idx; int os; } ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 scalar_t__ SPV_DIM ;
 int SPV_ROWLEN ;
 TYPE_1__* ocs_malloc (int ,int,int) ;

sparse_vector_t
spv_new(ocs_os_handle_t os)
{
 sparse_vector_t spv;
 uint32_t i;

 spv = ocs_malloc(os, sizeof(*spv), OCS_M_ZERO | OCS_M_NOWAIT);
 if (!spv) {
  return ((void*)0);
 }

 spv->os = os;
 spv->max_idx = 1;
 for (i = 0; i < SPV_DIM; i ++) {
  spv->max_idx *= SPV_ROWLEN;
 }

 return spv;
}

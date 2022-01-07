
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_4__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_5__ {int payload; int arg; int (* cb ) (int ,int ) ;} ;
typedef TYPE_2__ ocs_hw_set_port_protocol_cb_arg_t ;
typedef int int32_t ;


 int SLI4_BMBX_SIZE ;
 int ocs_dma_free (int ,int *) ;
 int ocs_free (int ,void*,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int32_t
ocs_hw_set_port_protocol_cb2(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_hw_set_port_protocol_cb_arg_t *cb_arg = arg;

 if (cb_arg->cb) {
  cb_arg->cb( status, cb_arg->arg);
 }

 ocs_dma_free(hw->os, &(cb_arg->payload));
 ocs_free(hw->os, mqe, SLI4_BMBX_SIZE);
 ocs_free(hw->os, arg, sizeof(ocs_hw_set_port_protocol_cb_arg_t));

 return 0;
}

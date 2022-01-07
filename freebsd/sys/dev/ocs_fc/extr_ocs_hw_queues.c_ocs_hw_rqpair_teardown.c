
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_hw_t ;


 int ocs_hw_rqpair_auto_xfer_rdy_buffer_free (int *) ;

void
ocs_hw_rqpair_teardown(ocs_hw_t *hw)
{

 ocs_hw_rqpair_auto_xfer_rdy_buffer_free(hw);
}

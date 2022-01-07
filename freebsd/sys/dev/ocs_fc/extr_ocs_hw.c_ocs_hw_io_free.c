
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_6__ {int ref; int reqtag; int indicator; } ;
typedef TYPE_2__ ocs_hw_io_t ;
typedef int int32_t ;


 int ocs_log_err (int ,char*,int ,int ) ;
 int ocs_ref_put (int *) ;
 scalar_t__ ocs_ref_read_count (int *) ;

int32_t
ocs_hw_io_free(ocs_hw_t *hw, ocs_hw_io_t *io)
{

 if (ocs_ref_read_count(&io->ref) <= 0) {
  ocs_log_err(hw->os, "Bad parameter: refcount <= 0 xri=%x tag=%x\n",
       io->indicator, io->reqtag);
  return -1;
 }

 return ocs_ref_put(&io->ref);
}

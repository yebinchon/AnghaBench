
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_8__ {int indicator; } ;
typedef TYPE_2__ ocs_hw_io_t ;
typedef int int32_t ;


 int ocs_log_err (int *,char*,TYPE_1__*,TYPE_2__*) ;

int32_t
ocs_hw_io_get_xid(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 if (!hw || !io) {
  ocs_log_err(hw ? hw->os : ((void*)0),
       "bad parameter hw=%p io=%p\n", hw, io);
  return -1;
 }

 return io->indicator;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_8__ {int xbusy; int ref; int indicator; int * wq; } ;
typedef TYPE_2__ ocs_hw_io_t ;


 int TRUE ;
 int ocs_hw_io_free_port_owned ;
 int ocs_log_err (int ,char*,...) ;
 int ocs_ref_init (int *,int ,TYPE_2__*) ;
 scalar_t__ ocs_ref_read_count (int *) ;

ocs_hw_io_t *
ocs_hw_io_activate_port_owned(ocs_hw_t *hw, ocs_hw_io_t *io)
{
 if (ocs_ref_read_count(&io->ref) > 0) {
  ocs_log_err(hw->os, "Bad parameter: refcount > 0\n");
  return ((void*)0);
 }

 if (io->wq != ((void*)0)) {
  ocs_log_err(hw->os, "XRI %x already in use\n", io->indicator);
  return ((void*)0);
 }

 ocs_ref_init(&io->ref, ocs_hw_io_free_port_owned, io);
 io->xbusy = TRUE;

 return io;
}

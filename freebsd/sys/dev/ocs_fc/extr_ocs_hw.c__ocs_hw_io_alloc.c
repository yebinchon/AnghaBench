
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int io_alloc_failed_count; int io_inuse; int io_free; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_9__ {int ref; int abort_reqtag; int quarantine_first_phase; int quarantine; int state; } ;
typedef TYPE_2__ ocs_hw_io_t ;


 int FALSE ;
 int OCS_HW_IO_STATE_INUSE ;
 int TRUE ;
 int UINT32_MAX ;
 int ocs_atomic_add_return (int *,int) ;
 int ocs_hw_io_free_internal ;
 int ocs_list_add_tail (int *,TYPE_2__*) ;
 TYPE_2__* ocs_list_remove_head (int *) ;
 int ocs_ref_init (int *,int ,TYPE_2__*) ;

__attribute__((used)) static inline ocs_hw_io_t *
_ocs_hw_io_alloc(ocs_hw_t *hw)
{
 ocs_hw_io_t *io = ((void*)0);

 if (((void*)0) != (io = ocs_list_remove_head(&hw->io_free))) {
  ocs_list_add_tail(&hw->io_inuse, io);
  io->state = OCS_HW_IO_STATE_INUSE;
  io->quarantine = FALSE;
  io->quarantine_first_phase = TRUE;
  io->abort_reqtag = UINT32_MAX;
  ocs_ref_init(&io->ref, ocs_hw_io_free_internal, io);
 } else {
  ocs_atomic_add_return(&hw->io_alloc_failed_count, 1);
 }

 return io;
}

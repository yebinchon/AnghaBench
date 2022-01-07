
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * app; scalar_t__ flags; int state; } ;
struct TYPE_8__ {TYPE_2__* ocs; TYPE_1__ tgt_io; } ;
typedef TYPE_3__ ocs_io_t ;
struct TYPE_7__ {scalar_t__ io_in_use; } ;


 int OCS_CAM_IO_FREE ;
 int atomic_subtract_acq_32 (scalar_t__*,int) ;
 int ocs_scsi_io_complete (TYPE_3__*) ;

__attribute__((used)) static inline void ocs_target_io_free(ocs_io_t *io)
{
 io->tgt_io.state = OCS_CAM_IO_FREE;
 io->tgt_io.flags = 0;
 io->tgt_io.app = ((void*)0);
 ocs_scsi_io_complete(io);
 if(io->ocs->io_in_use != 0)
  atomic_subtract_acq_32(&io->ocs->io_in_use, 1);
}

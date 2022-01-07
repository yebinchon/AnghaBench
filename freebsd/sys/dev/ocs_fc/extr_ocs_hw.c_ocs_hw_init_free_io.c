
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ tgt_wqe_timeout; int * ul_io; int * wq; int * rnode; scalar_t__ port_owned_abort_count; int abort_in_progress; scalar_t__ status_saved; int * abort_done; int * done; } ;
typedef TYPE_1__ ocs_hw_io_t ;


 int FALSE ;

__attribute__((used)) static inline void
ocs_hw_init_free_io(ocs_hw_io_t *io)
{




 io->done = ((void*)0);
 io->abort_done = ((void*)0);
 io->status_saved = 0;
 io->abort_in_progress = FALSE;
 io->port_owned_abort_count = 0;
 io->rnode = ((void*)0);
 io->type = 0xFFFF;
 io->wq = ((void*)0);
 io->ul_io = ((void*)0);
 io->tgt_wqe_timeout = 0;
}

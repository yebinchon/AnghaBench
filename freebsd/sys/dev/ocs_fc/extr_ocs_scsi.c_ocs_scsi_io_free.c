
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref; int display_name; } ;
typedef TYPE_1__ ocs_io_t ;


 int ocs_assert (int) ;
 int ocs_ref_put (int *) ;
 scalar_t__ ocs_ref_read_count (int *) ;
 int scsi_io_trace (TYPE_1__*,char*,TYPE_1__*,int ) ;

void
ocs_scsi_io_free(ocs_io_t *io)
{
 scsi_io_trace(io, "freeing io 0x%p %s\n", io, io->display_name);
 ocs_assert(ocs_ref_read_count(&io->ref) > 0);
 ocs_ref_put(&io->ref);
}

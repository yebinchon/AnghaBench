
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int transferred; } ;
typedef TYPE_1__ ocs_io_t ;



void
ocs_scsi_update_first_burst_transferred(ocs_io_t *io, uint32_t transferred)
{
 io->transferred = transferred;
}

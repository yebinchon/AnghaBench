
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_3__ ovfl_sgl; int ocs; } ;
typedef TYPE_1__ ocs_io_t ;


 int ocs_dma_free (int ,TYPE_3__*) ;

__attribute__((used)) static void
ocs_scsi_io_free_ovfl(ocs_io_t *io) {
 if (io->ovfl_sgl.size) {
  ocs_dma_free(io->ocs, &io->ovfl_sgl);
 }
}

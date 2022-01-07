
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_hw_t ;
struct TYPE_3__ {int * ovfl_lsp; scalar_t__ ovfl_sgl_count; int * ovfl_sgl; int * ovfl_io; int def_sgl_count; int sgl_count; int def_sgl; int * sgl; } ;
typedef TYPE_1__ ocs_hw_io_t ;


 int ocs_hw_io_free (int *,int *) ;

__attribute__((used)) static void
ocs_hw_io_restore_sgl(ocs_hw_t *hw, ocs_hw_io_t *io)
{

 io->sgl = &io->def_sgl;
 io->sgl_count = io->def_sgl_count;
 if (io->ovfl_io != ((void*)0)) {
  ocs_hw_io_free(hw, io->ovfl_io);
  io->ovfl_io = ((void*)0);
 }


 io->ovfl_sgl = ((void*)0);
 io->ovfl_sgl_count = 0;
 io->ovfl_lsp = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int sli4_sge_t ;
struct TYPE_7__ {TYPE_3__* hio; } ;
typedef TYPE_2__ ocs_io_t ;
struct TYPE_6__ {int * virt; int phys; } ;
struct TYPE_8__ {scalar_t__ n_sge; scalar_t__ def_sgl_count; TYPE_1__* ovfl_sgl; TYPE_1__* sgl; TYPE_1__ def_sgl; } ;
typedef TYPE_3__ ocs_hw_io_t ;


 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int scsi_io_trace (TYPE_2__*,char*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static void ocs_log_sgl(ocs_io_t *io)
{
 ocs_hw_io_t *hio = io->hio;
 sli4_sge_t *data = ((void*)0);
 uint32_t *dword = ((void*)0);
 uint32_t i;
 uint32_t n_sge;

 scsi_io_trace(io, "def_sgl at 0x%x 0x%08x\n",
        ocs_addr32_hi(hio->def_sgl.phys),
        ocs_addr32_lo(hio->def_sgl.phys));
 n_sge = (hio->sgl == &hio->def_sgl ? hio->n_sge : hio->def_sgl_count);
 for (i = 0, data = hio->def_sgl.virt; i < n_sge; i++, data++) {
  dword = (uint32_t*)data;

  scsi_io_trace(io, "SGL %2d 0x%08x 0x%08x 0x%08x 0x%08x\n",
    i, dword[0], dword[1], dword[2], dword[3]);

  if (dword[2] & (1U << 31)) {
   break;
  }
 }

 if (hio->ovfl_sgl != ((void*)0) &&
  hio->sgl == hio->ovfl_sgl) {
  scsi_io_trace(io, "Overflow at 0x%x 0x%08x\n",
         ocs_addr32_hi(hio->ovfl_sgl->phys),
         ocs_addr32_lo(hio->ovfl_sgl->phys));
  for (i = 0, data = hio->ovfl_sgl->virt; i < hio->n_sge; i++, data++) {
   dword = (uint32_t*)data;

   scsi_io_trace(io, "SGL %2d 0x%08x 0x%08x 0x%08x 0x%08x\n",
     i, dword[0], dword[1], dword[2], dword[3]);
   if (dword[2] & (1U << 31)) {
    break;
   }
  }
 }

}

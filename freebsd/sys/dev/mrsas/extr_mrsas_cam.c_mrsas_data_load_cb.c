
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mrsas_softc {int max_num_sge; int mrsas_dev; int data_tag; } ;
struct mrsas_mpt_cmd {int error_code; int flags; scalar_t__ pdInterface; int sge_count; TYPE_3__* io_request; int data_dmamap; struct mrsas_softc* sc; TYPE_2__* ccb_ptr; } ;
typedef int bus_dma_segment_t ;
typedef int boolean_t ;
struct TYPE_6__ {int IoFlags; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ ccb_h; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_REQ_TOO_BIG ;
 int EFBIG ;
 int MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH ;
 int MRSAS_DIR_IN ;
 int MRSAS_DIR_OUT ;
 scalar_t__ NVME_PD ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,...) ;
 int mrsas_build_ieee_sgl (struct mrsas_mpt_cmd*,int *,int) ;
 int mrsas_build_prp_nvme (struct mrsas_mpt_cmd*,int *,int) ;
 int mrsas_is_prp_possible (struct mrsas_mpt_cmd*,int *,int) ;

__attribute__((used)) static void
mrsas_data_load_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct mrsas_mpt_cmd *cmd = (struct mrsas_mpt_cmd *)arg;
 struct mrsas_softc *sc = cmd->sc;
 boolean_t build_prp = 0;

 if (error) {
  cmd->error_code = error;
  device_printf(sc->mrsas_dev, "mrsas_data_load_cb_prp: error=%d\n", error);
  if (error == EFBIG) {
   cmd->ccb_ptr->ccb_h.status = CAM_REQ_TOO_BIG;
   return;
  }
 }
 if (cmd->flags & MRSAS_DIR_IN)
  bus_dmamap_sync(cmd->sc->data_tag, cmd->data_dmamap,
      BUS_DMASYNC_PREREAD);
 if (cmd->flags & MRSAS_DIR_OUT)
  bus_dmamap_sync(cmd->sc->data_tag, cmd->data_dmamap,
      BUS_DMASYNC_PREWRITE);
 if (nseg > sc->max_num_sge) {
  device_printf(sc->mrsas_dev, "SGE count is too large or 0.\n");
  return;
 }


 if ((cmd->io_request->IoFlags & MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH) &&
   (cmd->pdInterface == NVME_PD))
  build_prp = mrsas_is_prp_possible(cmd, segs, nseg);

 if (build_prp == 1)
  mrsas_build_prp_nvme(cmd, segs, nseg);
 else
  mrsas_build_ieee_sgl(cmd, segs, nseg);

 cmd->sge_count = nseg;
}

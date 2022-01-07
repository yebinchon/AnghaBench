
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef scalar_t__ u_int32_t ;
struct mrsas_softc {int mrsas_dev; int io_lock; int data_tag; } ;
struct mrsas_mpt_cmd {scalar_t__ error_code; int length; int * data; int data_dmamap; TYPE_2__* ccb_ptr; } ;
struct cam_sim {int dummy; } ;
struct TYPE_3__ {int path; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int BUS_DMA_NOWAIT ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ bus_dmamap_load (int ,int ,int *,int ,int ,struct mrsas_mpt_cmd*,int ) ;
 scalar_t__ bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct mrsas_mpt_cmd*,int ) ;
 int device_printf (int ,char*,...) ;
 int mrsas_data_load_cb ;
 int mrsas_freeze_simq (struct mrsas_mpt_cmd*,struct cam_sim*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct cam_sim* xpt_path_sim (int ) ;

int
mrsas_map_request(struct mrsas_softc *sc,
    struct mrsas_mpt_cmd *cmd, union ccb *ccb)
{
 u_int32_t retcode = 0;
 struct cam_sim *sim;

 sim = xpt_path_sim(cmd->ccb_ptr->ccb_h.path);

 if (cmd->data != ((void*)0)) {

  mtx_lock(&sc->io_lock);




  retcode = bus_dmamap_load(sc->data_tag, cmd->data_dmamap, cmd->data,
      cmd->length, mrsas_data_load_cb, cmd, BUS_DMA_NOWAIT);

  mtx_unlock(&sc->io_lock);
  if (retcode)
   device_printf(sc->mrsas_dev, "bus_dmamap_load(): retcode = %d\n", retcode);
  if (retcode == EINPROGRESS) {
   device_printf(sc->mrsas_dev, "request load in progress\n");
   mrsas_freeze_simq(cmd, sim);
  }
 }
 if (cmd->error_code)
  return (1);
 return (retcode);
}

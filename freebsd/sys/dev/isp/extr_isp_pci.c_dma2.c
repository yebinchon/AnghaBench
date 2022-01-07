
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ func_code; } ;
struct ccb_scsiio {scalar_t__ req_map; TYPE_1__ ccb_h; } ;
struct TYPE_9__ {int error; int rq; struct ccb_scsiio* cmd_token; TYPE_4__* isp; } ;
typedef TYPE_3__ mush_t ;
struct TYPE_8__ {int dmat; } ;
struct TYPE_10__ {TYPE_2__ isp_osinfo; } ;
typedef TYPE_4__ ispsoftc_t ;
typedef int ispds64_t ;
typedef int isp_ddir_t ;
typedef int bus_dma_segment_t ;
struct TYPE_11__ {int dmap; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;


 int EIO ;
 int ISP_FROM_DEVICE ;
 int ISP_NOXFR ;
 int ISP_TO_DEVICE ;
 int MUSHERR_NOQENTRIES ;
 TYPE_6__* PISP_PCMD (struct ccb_scsiio*) ;
 scalar_t__ XPT_CONT_TARGET_IO ;
 int XS_XFRLEN (struct ccb_scsiio*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int isp_send_cmd (TYPE_4__*,int ,int *,int,int ,int ,int *) ;

__attribute__((used)) static void
dma2(void *arg, bus_dma_segment_t *dm_segs, int nseg, int error)
{
 mush_t *mp = (mush_t *) arg;
 ispsoftc_t *isp= mp->isp;
 struct ccb_scsiio *csio = mp->cmd_token;
 isp_ddir_t ddir;
 int sdir;

 if (error) {
  mp->error = error;
  return;
 }
 if (nseg == 0) {
  ddir = ISP_NOXFR;
 } else {
  if ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
   ddir = ISP_FROM_DEVICE;
  } else {
   ddir = ISP_TO_DEVICE;
  }
  if ((csio->ccb_h.func_code == XPT_CONT_TARGET_IO) ^
      ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN)) {
   sdir = BUS_DMASYNC_PREREAD;
  } else {
   sdir = BUS_DMASYNC_PREWRITE;
  }
  bus_dmamap_sync(isp->isp_osinfo.dmat, PISP_PCMD(csio)->dmap,
      sdir);
 }

 error = isp_send_cmd(isp, mp->rq, dm_segs, nseg, XS_XFRLEN(csio),
     ddir, (ispds64_t *)csio->req_map);
 switch (error) {
 case 129:
  mp->error = MUSHERR_NOQENTRIES;
  break;
 case 128:
  break;
 default:
  mp->error = EIO;
  break;
 }
}

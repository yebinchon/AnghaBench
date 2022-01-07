
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ccb_scsiio {int dummy; } ;
struct TYPE_9__ {int error; void* rq; struct ccb_scsiio* cmd_token; TYPE_3__* isp; } ;
typedef TYPE_2__ mush_t ;
struct TYPE_8__ {int dmat; } ;
struct TYPE_10__ {TYPE_1__ isp_osinfo; } ;
typedef TYPE_3__ ispsoftc_t ;
struct TYPE_11__ {int dmap; } ;


 int CAM_REQ_INVALID ;
 int CAM_REQ_TOO_BIG ;
 int CAM_UNREC_HBA_ERROR ;
 int CMD_COMPLETE ;
 int CMD_EAGAIN ;
 int CMD_QUEUED ;
 int EFBIG ;
 int EINPROGRESS ;
 int EINVAL ;
 int ISP_LOGERR ;
 int MUSHERR_NOQENTRIES ;
 TYPE_7__* PISP_PCMD (struct ccb_scsiio*) ;
 int XS_SETERR (struct ccb_scsiio*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,TYPE_2__*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int dma2 ;
 int isp_prt (TYPE_3__*,int ,char*,...) ;

__attribute__((used)) static int
isp_sbus_dmasetup(ispsoftc_t *isp, struct ccb_scsiio *csio, void *ff)
{
 mush_t mush, *mp;
 int error;

 mp = &mush;
 mp->isp = isp;
 mp->cmd_token = csio;
 mp->rq = ff;
 mp->error = 0;

 error = bus_dmamap_load_ccb(isp->isp_osinfo.dmat,
     PISP_PCMD(csio)->dmap, (union ccb *)csio, dma2, mp, 0);
 if (error == EINPROGRESS) {
  bus_dmamap_unload(isp->isp_osinfo.dmat, PISP_PCMD(csio)->dmap);
  mp->error = EINVAL;
  isp_prt(isp, ISP_LOGERR,
      "deferred dma allocation not supported");
 } else if (error && mp->error == 0) {



  mp->error = error;
 }
 if (mp->error) {
  int retval = CMD_COMPLETE;
  if (mp->error == MUSHERR_NOQENTRIES) {
   retval = CMD_EAGAIN;
  } else if (mp->error == EFBIG) {
   XS_SETERR(csio, CAM_REQ_TOO_BIG);
  } else if (mp->error == EINVAL) {
   XS_SETERR(csio, CAM_REQ_INVALID);
  } else {
   XS_SETERR(csio, CAM_UNREC_HBA_ERROR);
  }
  return (retval);
 }
 return (CMD_QUEUED);
}

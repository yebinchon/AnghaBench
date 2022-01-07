
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_10__ {int status; } ;
struct ccb_scsiio {TYPE_2__ ccb_h; } ;
struct TYPE_11__ {int error; void* rq; struct ccb_scsiio* cmd_token; TYPE_4__* isp; } ;
typedef TYPE_3__ mush_t ;
struct TYPE_9__ {int dmat; } ;
struct TYPE_12__ {TYPE_1__ isp_osinfo; } ;
typedef TYPE_4__ ispsoftc_t ;
struct TYPE_13__ {int dmap; } ;


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
 TYPE_8__* PISP_PCMD (struct ccb_scsiio*) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,TYPE_3__*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int dma2 ;
 int isp_prt (TYPE_4__*,int ,char*,...) ;

__attribute__((used)) static int
isp_pci_dmasetup(ispsoftc_t *isp, struct ccb_scsiio *csio, void *ff)
{
 mush_t mush, *mp;
 int error;

 mp = &mush;
 mp->isp = isp;
 mp->cmd_token = csio;
 mp->rq = ff;
 mp->error = 0;

 error = bus_dmamap_load_ccb(isp->isp_osinfo.dmat, PISP_PCMD(csio)->dmap,
     (union ccb *)csio, dma2, mp, 0);
 if (error == EINPROGRESS) {
  bus_dmamap_unload(isp->isp_osinfo.dmat, PISP_PCMD(csio)->dmap);
  mp->error = EINVAL;
  isp_prt(isp, ISP_LOGERR, "deferred dma allocation not supported");
 } else if (error && mp->error == 0) {



  mp->error = error;
 }
 if (mp->error) {
  int retval = CMD_COMPLETE;
  if (mp->error == MUSHERR_NOQENTRIES) {
   retval = CMD_EAGAIN;
  } else if (mp->error == EFBIG) {
   csio->ccb_h.status = CAM_REQ_TOO_BIG;
  } else if (mp->error == EINVAL) {
   csio->ccb_h.status = CAM_REQ_INVALID;
  } else {
   csio->ccb_h.status = CAM_UNREC_HBA_ERROR;
  }
  return (retval);
 }
 return (CMD_QUEUED);
}

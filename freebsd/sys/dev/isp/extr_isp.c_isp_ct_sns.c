
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int* param; } ;
typedef TYPE_1__ mbreg_t ;
struct TYPE_13__ {int isp_dblev; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_14__ {int isp_scratch; int isp_scdma; } ;
typedef TYPE_3__ fcparam ;


 int DMA_WD0 (int ) ;
 int DMA_WD1 (int ) ;
 int DMA_WD2 (int ) ;
 int DMA_WD3 (int ) ;
 TYPE_3__* FCPARAM (TYPE_2__*,int) ;
 int ISP_LOGDEBUG1 ;
 int MBLOGALL ;
 int MBOX_COMMAND_COMPLETE ;
 int MBOX_INVALID_COMMAND ;
 int MBOX_SEND_SNS ;
 int MBSINIT (TYPE_1__*,int ,int ,int) ;
 int MEMORYBARRIER (TYPE_2__*,int ,int ,int,int) ;
 int SYNC_SFORCPU ;
 int SYNC_SFORDEV ;
 int isp_mboxcmd (TYPE_2__*,TYPE_1__*) ;
 int isp_print_bytes (TYPE_2__*,char*,int,int ) ;

__attribute__((used)) static int
isp_ct_sns(ispsoftc_t *isp, int chan, uint32_t cmd_bcnt, uint32_t rsp_bcnt)
{
 fcparam *fcp = FCPARAM(isp, chan);
 mbreg_t mbs;

 if (isp->isp_dblev & ISP_LOGDEBUG1)
  isp_print_bytes(isp, "CT SNS request", cmd_bcnt, fcp->isp_scratch);
 MEMORYBARRIER(isp, SYNC_SFORDEV, 0, cmd_bcnt, chan);

 MBSINIT(&mbs, MBOX_SEND_SNS, MBLOGALL, 10000000);
 mbs.param[1] = cmd_bcnt >> 1;
 mbs.param[2] = DMA_WD1(fcp->isp_scdma);
 mbs.param[3] = DMA_WD0(fcp->isp_scdma);
 mbs.param[6] = DMA_WD3(fcp->isp_scdma);
 mbs.param[7] = DMA_WD2(fcp->isp_scdma);
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
  if (mbs.param[0] == MBOX_INVALID_COMMAND) {
   return (1);
  } else {
   return (-1);
  }
 }

 MEMORYBARRIER(isp, SYNC_SFORCPU, 0, rsp_bcnt, chan);
 if (isp->isp_dblev & ISP_LOGDEBUG1)
  isp_print_bytes(isp, "CT response", rsp_bcnt, fcp->isp_scratch);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {int* param; int ibits; } ;
typedef TYPE_1__ mbreg_t ;
typedef int ispsoftc_t ;
struct TYPE_16__ {int pnhle_port_id_lo; int pnhle_port_id_hi; int pnhle_handle; int pnhle_port_id_hi_handle; } ;
typedef TYPE_2__ isp_pnhle_24xx_t ;
typedef TYPE_2__ isp_pnhle_23xx_t ;
typedef TYPE_2__ isp_pnhle_21xx_t ;
struct TYPE_17__ {int isp_portid; TYPE_2__* isp_scratch; int isp_scdma; } ;
typedef TYPE_5__ fcparam ;


 void* DMA_WD0 (int ) ;
 void* DMA_WD1 (int ) ;
 void* DMA_WD2 (int ) ;
 void* DMA_WD3 (int ) ;
 TYPE_5__* FCPARAM (int *,int) ;
 scalar_t__ FC_SCRATCH_ACQUIRE (int *,int) ;
 int FC_SCRATCH_RELEASE (int *,int) ;
 int ISP_FC_SCRLEN ;
 int ISP_LOGERR ;
 scalar_t__ IS_23XX (int *) ;
 scalar_t__ IS_24XX (int *) ;
 int MBLOGALL ;
 int MBOX_COMMAND_COMPLETE ;
 int MBOX_GET_ID_LIST ;
 int MBSINIT (TYPE_1__*,int ,int ,int) ;
 int MEMORYBARRIER (int *,int ,int ,int,int) ;
 int SYNC_SFORCPU ;
 int SYNC_SFORDEV ;
 int isp_get_pnhle_21xx (int *,TYPE_2__*,TYPE_2__*) ;
 int isp_get_pnhle_23xx (int *,TYPE_2__*,TYPE_2__*) ;
 int isp_get_pnhle_24xx (int *,TYPE_2__*,TYPE_2__*) ;
 int isp_mboxcmd (int *,TYPE_1__*) ;
 int isp_prt (int *,int ,int ) ;
 int sacq ;

__attribute__((used)) static int
isp_gethandles(ispsoftc_t *isp, int chan, uint16_t *handles, int *num, int loop)
{
 fcparam *fcp = FCPARAM(isp, chan);
 mbreg_t mbs;
 isp_pnhle_21xx_t el1, *elp1;
 isp_pnhle_23xx_t el3, *elp3;
 isp_pnhle_24xx_t el4, *elp4;
 int i, j;
 uint32_t p;
 uint16_t h;

 MBSINIT(&mbs, MBOX_GET_ID_LIST, MBLOGALL, 250000);
 if (IS_24XX(isp)) {
  mbs.param[2] = DMA_WD1(fcp->isp_scdma);
  mbs.param[3] = DMA_WD0(fcp->isp_scdma);
  mbs.param[6] = DMA_WD3(fcp->isp_scdma);
  mbs.param[7] = DMA_WD2(fcp->isp_scdma);
  mbs.param[8] = ISP_FC_SCRLEN;
  mbs.param[9] = chan;
 } else {
  mbs.ibits = (1 << 1)|(1 << 2)|(1 << 3)|(1 << 6);
  mbs.param[1] = DMA_WD1(fcp->isp_scdma);
  mbs.param[2] = DMA_WD0(fcp->isp_scdma);
  mbs.param[3] = DMA_WD3(fcp->isp_scdma);
  mbs.param[6] = DMA_WD2(fcp->isp_scdma);
 }
 if (FC_SCRATCH_ACQUIRE(isp, chan)) {
  isp_prt(isp, ISP_LOGERR, sacq);
  return (-1);
 }
 MEMORYBARRIER(isp, SYNC_SFORDEV, 0, ISP_FC_SCRLEN, chan);
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
  FC_SCRATCH_RELEASE(isp, chan);
  return (mbs.param[0] | (mbs.param[1] << 16));
 }
 MEMORYBARRIER(isp, SYNC_SFORCPU, 0, ISP_FC_SCRLEN, chan);
 elp1 = fcp->isp_scratch;
 elp3 = fcp->isp_scratch;
 elp4 = fcp->isp_scratch;
 for (i = 0, j = 0; i < mbs.param[1] && j < *num; i++) {
  if (IS_24XX(isp)) {
   isp_get_pnhle_24xx(isp, &elp4[i], &el4);
   p = el4.pnhle_port_id_lo |
       (el4.pnhle_port_id_hi << 16);
   h = el4.pnhle_handle;
  } else if (IS_23XX(isp)) {
   isp_get_pnhle_23xx(isp, &elp3[i], &el3);
   p = el3.pnhle_port_id_lo |
       (el3.pnhle_port_id_hi << 16);
   h = el3.pnhle_handle;
  } else {
   isp_get_pnhle_21xx(isp, &elp1[i], &el1);
   p = el1.pnhle_port_id_lo |
       ((el1.pnhle_port_id_hi_handle & 0xff) << 16);
   h = el1.pnhle_port_id_hi_handle >> 8;
  }
  if (loop && (p >> 8) != (fcp->isp_portid >> 8))
   continue;
  handles[j++] = h;
 }
 *num = j;
 FC_SCRATCH_RELEASE(isp, chan);
 return (0);
}

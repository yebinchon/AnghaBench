
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ isp_state; } ;
typedef TYPE_1__ ispsoftc_t ;


 int BIU2100_CSR ;
 int BIU2100_FB_REGS ;
 int BIU2100_FPM0_REGS ;
 int BIU2100_RISC_REGS ;
 int BIU2400_HCCR ;
 int BIU2400_ICR ;
 int BIU_ICR ;
 int FBMCMD_FIFO_RESET_ALL ;
 int FBM_CMD ;
 int FPM_DIAG_CONFIG ;
 int FPM_SOFT_RESET ;
 int HCCR ;
 int HCCR_2400_CMD_PAUSE ;
 int HCCR_CMD_PAUSE ;
 int ISP_DISABLE_INTS (TYPE_1__*) ;
 scalar_t__ ISP_RESETSTATE ;
 int ISP_WRITE (TYPE_1__*,int ,int ) ;
 scalar_t__ IS_24XX (TYPE_1__*) ;
 scalar_t__ IS_FC (TYPE_1__*) ;
 int isp_stop (TYPE_1__*) ;

void
isp_shutdown(ispsoftc_t *isp)
{

 if (isp->isp_state >= ISP_RESETSTATE)
  isp_stop(isp);
 ISP_DISABLE_INTS(isp);
 if (IS_FC(isp)) {
  if (IS_24XX(isp)) {
   ISP_WRITE(isp, BIU2400_ICR, 0);
   ISP_WRITE(isp, BIU2400_HCCR, HCCR_2400_CMD_PAUSE);
  } else {
   ISP_WRITE(isp, BIU_ICR, 0);
   ISP_WRITE(isp, HCCR, HCCR_CMD_PAUSE);
   ISP_WRITE(isp, BIU2100_CSR, BIU2100_FPM0_REGS);
   ISP_WRITE(isp, FPM_DIAG_CONFIG, FPM_SOFT_RESET);
   ISP_WRITE(isp, BIU2100_CSR, BIU2100_FB_REGS);
   ISP_WRITE(isp, FBM_CMD, FBMCMD_FIFO_RESET_ALL);
   ISP_WRITE(isp, BIU2100_CSR, BIU2100_RISC_REGS);
  }
 } else {
  ISP_WRITE(isp, BIU_ICR, 0);
  ISP_WRITE(isp, HCCR, HCCR_CMD_PAUSE);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isp_dev; } ;
typedef TYPE_1__ ispsoftc_t ;


 int BIU_CONF1 ;
 int BIU_ICR ;
 int BIU_ISR ;
 int BIU_SEMA ;
 int CDMA_CONF ;
 int CDMA_FIFO_STS ;
 int CDMA_STATUS ;
 int DDMA_CONF ;
 int DDMA_FIFO_STS ;
 int DDMA_STATUS ;
 int HCCR ;
 int HCCR_CMD_PAUSE ;
 int HCCR_CMD_RELEASE ;
 int ISP_READ (TYPE_1__*,int ) ;
 int ISP_WRITE (TYPE_1__*,int ,int ) ;
 int OUTMAILBOX0 ;
 int OUTMAILBOX1 ;
 int OUTMAILBOX2 ;
 int OUTMAILBOX3 ;
 int OUTMAILBOX4 ;
 int SXP_GROSS_ERR ;
 int SXP_INTERRUPT ;
 int SXP_PINS_CTRL ;
 char* device_get_nameunit (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
isp_sbus_dumpregs(ispsoftc_t *isp, const char *msg)
{
 if (msg)
  printf("%s: %s\n", device_get_nameunit(isp->isp_dev), msg);
 else
  printf("%s:\n", device_get_nameunit(isp->isp_dev));
 printf("    biu_conf1=%x", ISP_READ(isp, BIU_CONF1));
 printf(" biu_icr=%x biu_isr=%x biu_sema=%x ", ISP_READ(isp, BIU_ICR),
     ISP_READ(isp, BIU_ISR), ISP_READ(isp, BIU_SEMA));
 printf("risc_hccr=%x\n", ISP_READ(isp, HCCR));


 ISP_WRITE(isp, HCCR, HCCR_CMD_PAUSE);
 printf("    cdma_conf=%x cdma_sts=%x cdma_fifostat=%x\n",
  ISP_READ(isp, CDMA_CONF), ISP_READ(isp, CDMA_STATUS),
  ISP_READ(isp, CDMA_FIFO_STS));
 printf("    ddma_conf=%x ddma_sts=%x ddma_fifostat=%x\n",
  ISP_READ(isp, DDMA_CONF), ISP_READ(isp, DDMA_STATUS),
  ISP_READ(isp, DDMA_FIFO_STS));
 printf("    sxp_int=%x sxp_gross=%x sxp(scsi_ctrl)=%x\n",
  ISP_READ(isp, SXP_INTERRUPT),
  ISP_READ(isp, SXP_GROSS_ERR),
  ISP_READ(isp, SXP_PINS_CTRL));
 ISP_WRITE(isp, HCCR, HCCR_CMD_RELEASE);
 printf("    mbox regs: %x %x %x %x %x\n",
     ISP_READ(isp, OUTMAILBOX0), ISP_READ(isp, OUTMAILBOX1),
     ISP_READ(isp, OUTMAILBOX2), ISP_READ(isp, OUTMAILBOX3),
     ISP_READ(isp, OUTMAILBOX4));
}

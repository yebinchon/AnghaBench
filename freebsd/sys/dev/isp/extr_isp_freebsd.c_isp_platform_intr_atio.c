
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ispsoftc_t ;


 int BIU2400_HCCR ;
 int HCCR_2400_CMD_CLEAR_RISC_INT ;
 int ISP_LOCK (int *) ;
 int ISP_UNLOCK (int *) ;
 int ISP_WRITE (int *,int ,int ) ;
 int isp_intr_atioq (int *) ;

void
isp_platform_intr_atio(void *arg)
{
 ispsoftc_t *isp = arg;

 ISP_LOCK(isp);



 ISP_UNLOCK(isp);


 ISP_WRITE(isp, BIU2400_HCCR, HCCR_2400_CMD_CLEAR_RISC_INT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ispsoftc_t ;


 int ISP_LOCK (int *) ;
 int ISP_RUN_ISR (int *) ;
 int ISP_UNLOCK (int *) ;

void
isp_platform_intr(void *arg)
{
 ispsoftc_t *isp = arg;

 ISP_LOCK(isp);
 ISP_RUN_ISR(isp);
 ISP_UNLOCK(isp);
}

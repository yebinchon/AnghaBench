
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ isp_reqodx; int isp_reqidx; int isp_rquest; int isp_rqstoutrp; } ;
typedef TYPE_1__ ispsoftc_t ;


 scalar_t__ ISP_NXT_QENTRY (int ,int ) ;
 void* ISP_QUEUE_ENTRY (int ,int ) ;
 scalar_t__ ISP_READ (TYPE_1__*,int ) ;
 int RQUEST_QUEUE_LEN (TYPE_1__*) ;

void *
isp_getrqentry(ispsoftc_t *isp)
{
 uint32_t next;

 next = ISP_NXT_QENTRY(isp->isp_reqidx, RQUEST_QUEUE_LEN(isp));
 if (next == isp->isp_reqodx) {
  isp->isp_reqodx = ISP_READ(isp, isp->isp_rqstoutrp);
  if (next == isp->isp_reqodx)
   return (((void*)0));
 }
 return (ISP_QUEUE_ENTRY(isp->isp_rquest, isp->isp_reqidx));
}

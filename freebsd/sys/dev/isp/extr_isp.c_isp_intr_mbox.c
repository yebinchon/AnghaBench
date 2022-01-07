
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int isp_obits; int * isp_mboxtmp; int isp_mboxbsy; } ;
typedef TYPE_1__ ispsoftc_t ;


 int ISP_LOGWARN ;
 int ISP_NMBOX (TYPE_1__*) ;
 int ISP_READ (TYPE_1__*,int ) ;
 int MBOX_NOTIFY_COMPLETE (TYPE_1__*) ;
 int MBOX_OFF (int) ;
 int isp_prt (TYPE_1__*,int ,char*,int ) ;

void
isp_intr_mbox(ispsoftc_t *isp, uint16_t mbox0)
{
 int i, obits;

 if (!isp->isp_mboxbsy) {
  isp_prt(isp, ISP_LOGWARN, "mailbox 0x%x with no waiters", mbox0);
  return;
 }
 obits = isp->isp_obits;
 isp->isp_mboxtmp[0] = mbox0;
 for (i = 1; i < ISP_NMBOX(isp); i++) {
  if ((obits & (1 << i)) == 0)
   continue;
  isp->isp_mboxtmp[i] = ISP_READ(isp, MBOX_OFF(i));
 }
 MBOX_NOTIFY_COMPLETE(isp);
}

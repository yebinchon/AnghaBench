
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* param; } ;
typedef TYPE_1__ mbreg_t ;
typedef int ispsoftc_t ;


 int ISP_LOGWARN ;
 int MBLOGALL ;
 int MBOX_COMMAND_COMPLETE ;
 int MBOX_SEND_CHANGE_REQUEST ;
 int MBSINIT (TYPE_1__*,int ,int ,int) ;
 int isp_mboxcmd (int *,TYPE_1__*) ;
 int isp_prt (int *,int ,char*,int,int) ;

__attribute__((used)) static int
isp_send_change_request(ispsoftc_t *isp, int chan)
{
 mbreg_t mbs;

 MBSINIT(&mbs, MBOX_SEND_CHANGE_REQUEST, MBLOGALL, 500000);
 mbs.param[1] = 0x03;
 mbs.param[9] = chan;
 isp_mboxcmd(isp, &mbs);
 if (mbs.param[0] == MBOX_COMMAND_COMPLETE) {
  return (0);
 } else {
  isp_prt(isp, ISP_LOGWARN, "Chan %d Send Change Request: 0x%x",
      chan, mbs.param[0]);
  return (-1);
 }
}

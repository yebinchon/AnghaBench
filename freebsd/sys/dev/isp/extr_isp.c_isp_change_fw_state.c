
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_3__ {int isp_fwstate; } ;
typedef TYPE_1__ fcparam ;


 TYPE_1__* FCPARAM (int *,int) ;
 int ISP_LOGCONFIG ;
 int ISP_LOG_SANCFG ;
 int isp_fc_fw_statename (int) ;
 int isp_prt (int *,int,char*,int,int ,int ) ;

__attribute__((used)) static void
isp_change_fw_state(ispsoftc_t *isp, int chan, int state)
{
 fcparam *fcp = FCPARAM(isp, chan);

 if (fcp->isp_fwstate == state)
  return;
 isp_prt(isp, ISP_LOGCONFIG|ISP_LOG_SANCFG,
     "Chan %d Firmware state <%s->%s>", chan,
     isp_fc_fw_statename(fcp->isp_fwstate), isp_fc_fw_statename(state));
 fcp->isp_fwstate = state;
}

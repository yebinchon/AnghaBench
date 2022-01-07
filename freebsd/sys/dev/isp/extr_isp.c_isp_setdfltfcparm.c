
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_15__ {int isp_confopts; } ;
typedef TYPE_1__ ispsoftc_t ;
struct TYPE_16__ {size_t role; int isp_wwnn; int isp_wwpn; int isp_zfwoptions; int isp_xfwoptions; int isp_fwoptions; void* isp_login_hdl; void* isp_lasthdl; int isp_wwpn_nvram; int isp_wwnn_nvram; int isp_loopid; int isp_retry_count; int isp_retry_delay; int isp_maxalloc; } ;
typedef TYPE_2__ fcparam ;


 int ACTIVE_NODEWWN (TYPE_1__*,int) ;
 int ACTIVE_PORTWWN (TYPE_1__*,int) ;
 int DEFAULT_LOOPID (TYPE_1__*,int) ;
 int DEFAULT_NODEWWN (TYPE_1__*,int) ;
 int DEFAULT_PORTWWN (TYPE_1__*,int) ;
 size_t DEFAULT_ROLE (TYPE_1__*,int) ;
 TYPE_2__* FCPARAM (TYPE_1__*,int) ;
 int ICB2400_OPT1_BOTH_WWNS ;
 int ICB2400_OPT1_FAIRNESS ;
 int ICB2400_OPT1_FULL_DUPLEX ;
 int ICB2400_OPT1_HARD_ADDRESS ;
 int ICB2400_OPT2_LOOP_2_PTP ;
 int ICB2400_OPT3_RATE_AUTO ;
 int ICBOPT_EXTENDED ;
 int ICBOPT_FAIRNESS ;
 int ICBOPT_FULL_DUPLEX ;
 int ICBOPT_HARD_ADDRESS ;
 int ICBOPT_PDBCHANGE_AE ;
 int ICBXOPT_LOOP_2_PTP ;
 int ICBZOPT_RATE_AUTO ;
 int ICB_DFLT_ALLOC ;
 int ICB_DFLT_RCOUNT ;
 int ICB_DFLT_RDELAY ;
 int ISP_CFG_FULL_DUPLEX ;
 int ISP_CFG_NONVRAM ;
 int ISP_LOGCONFIG ;
 scalar_t__ IS_24XX (TYPE_1__*) ;
 void* NIL_HANDLE ;
 int * isp_class3_roles ;
 int isp_prt (TYPE_1__*,int ,char*,int,int ,int ,int ,int ,int ) ;
 int isp_read_nvram (TYPE_1__*,int) ;

__attribute__((used)) static void
isp_setdfltfcparm(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);




 fcp->role = DEFAULT_ROLE(isp, chan);
 fcp->isp_maxalloc = ICB_DFLT_ALLOC;
 fcp->isp_retry_delay = ICB_DFLT_RDELAY;
 fcp->isp_retry_count = ICB_DFLT_RCOUNT;
 fcp->isp_loopid = DEFAULT_LOOPID(isp, chan);
 fcp->isp_wwnn_nvram = DEFAULT_NODEWWN(isp, chan);
 fcp->isp_wwpn_nvram = DEFAULT_PORTWWN(isp, chan);
 fcp->isp_fwoptions = 0;
 fcp->isp_xfwoptions = 0;
 fcp->isp_zfwoptions = 0;
 fcp->isp_lasthdl = NIL_HANDLE;
 fcp->isp_login_hdl = NIL_HANDLE;

 if (IS_24XX(isp)) {
  fcp->isp_fwoptions |= ICB2400_OPT1_FAIRNESS;
  fcp->isp_fwoptions |= ICB2400_OPT1_HARD_ADDRESS;
  if (isp->isp_confopts & ISP_CFG_FULL_DUPLEX)
   fcp->isp_fwoptions |= ICB2400_OPT1_FULL_DUPLEX;
  fcp->isp_fwoptions |= ICB2400_OPT1_BOTH_WWNS;
  fcp->isp_xfwoptions |= ICB2400_OPT2_LOOP_2_PTP;
  fcp->isp_zfwoptions |= ICB2400_OPT3_RATE_AUTO;
 } else {
  fcp->isp_fwoptions |= ICBOPT_FAIRNESS;
  fcp->isp_fwoptions |= ICBOPT_PDBCHANGE_AE;
  fcp->isp_fwoptions |= ICBOPT_HARD_ADDRESS;
  if (isp->isp_confopts & ISP_CFG_FULL_DUPLEX)
   fcp->isp_fwoptions |= ICBOPT_FULL_DUPLEX;




  fcp->isp_fwoptions &= ~ICBOPT_EXTENDED;
  fcp->isp_xfwoptions |= ICBXOPT_LOOP_2_PTP;
  fcp->isp_zfwoptions |= ICBZOPT_RATE_AUTO;
 }






 if ((isp->isp_confopts & ISP_CFG_NONVRAM) == 0) {
  int i, j = 0;



  for (i = 0; i < 2; i++) {
   j = isp_read_nvram(isp, chan);
   if (j == 0) {
    break;
   }
  }
  if (j) {
   isp->isp_confopts |= ISP_CFG_NONVRAM;
  }
 }

 fcp->isp_wwnn = ACTIVE_NODEWWN(isp, chan);
 fcp->isp_wwpn = ACTIVE_PORTWWN(isp, chan);
 isp_prt(isp, ISP_LOGCONFIG, "Chan %d 0x%08x%08x/0x%08x%08x Role %s",
     chan, (uint32_t) (fcp->isp_wwnn >> 32), (uint32_t) (fcp->isp_wwnn),
     (uint32_t) (fcp->isp_wwpn >> 32), (uint32_t) (fcp->isp_wwpn),
     isp_class3_roles[fcp->role]);
}

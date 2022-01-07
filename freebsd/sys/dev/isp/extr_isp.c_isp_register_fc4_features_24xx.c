
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint8_t ;
typedef int rp ;
typedef int rft_id_t ;
struct TYPE_23__ {scalar_t__ ct_cmd_resp; int ct_bcnt_resid; int ct_fcs_subtype; int ct_fcs_type; int ct_revision; } ;
struct TYPE_20__ {int* rffid_portid; int rffid_fc4features; int rffid_fc4type; TYPE_4__ rffid_hdr; } ;
typedef TYPE_1__ rff_id_t ;
struct TYPE_21__ {int isp_dblev; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_22__ {int isp_portid; int role; int * isp_scratch; } ;
typedef TYPE_3__ fcparam ;
typedef TYPE_4__ ct_hdr_t ;


 int CT_FC_SUBTYPE_NS ;
 int CT_FC_TYPE_FC ;
 int CT_REVISION ;
 int FC4_SCSI ;
 TYPE_3__* FCPARAM (TYPE_2__*,int) ;
 scalar_t__ FC_SCRATCH_ACQUIRE (TYPE_2__*,int) ;
 int FC_SCRATCH_RELEASE (TYPE_2__*,int) ;
 int ISP_LOGDEBUG1 ;
 int ISP_LOGERR ;
 int ISP_LOGWARN ;
 int ISP_LOG_SANCFG ;
 int ISP_LOG_WARN1 ;
 int ISP_MEMZERO (TYPE_1__*,int) ;
 int ISP_ROLE_INITIATOR ;
 int ISP_ROLE_TARGET ;
 scalar_t__ LS_ACC ;
 scalar_t__ LS_RJT ;
 scalar_t__ SNS_RFF_ID ;
 scalar_t__ isp_ct_passthru (TYPE_2__*,int,int,int) ;
 int isp_get_ct_hdr (TYPE_2__*,TYPE_4__*,TYPE_4__*) ;
 int isp_print_bytes (TYPE_2__*,char*,int,int *) ;
 int isp_prt (TYPE_2__*,int,char*,...) ;
 int isp_put_rff_id (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int sacq ;

__attribute__((used)) static int
isp_register_fc4_features_24xx(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 ct_hdr_t *ct;
 rff_id_t rp;
 uint8_t *scp = fcp->isp_scratch;

 if (FC_SCRATCH_ACQUIRE(isp, chan)) {
  isp_prt(isp, ISP_LOGERR, sacq);
  return (-1);
 }




 ISP_MEMZERO(&rp, sizeof(rp));
 ct = &rp.rffid_hdr;
 ct->ct_revision = CT_REVISION;
 ct->ct_fcs_type = CT_FC_TYPE_FC;
 ct->ct_fcs_subtype = CT_FC_SUBTYPE_NS;
 ct->ct_cmd_resp = SNS_RFF_ID;
 ct->ct_bcnt_resid = (sizeof (rff_id_t) - sizeof (ct_hdr_t)) >> 2;
 rp.rffid_portid[0] = fcp->isp_portid >> 16;
 rp.rffid_portid[1] = fcp->isp_portid >> 8;
 rp.rffid_portid[2] = fcp->isp_portid;
 rp.rffid_fc4features = 0;
 if (fcp->role & ISP_ROLE_TARGET)
  rp.rffid_fc4features |= 1;
 if (fcp->role & ISP_ROLE_INITIATOR)
  rp.rffid_fc4features |= 2;
 rp.rffid_fc4type = FC4_SCSI;
 isp_put_rff_id(isp, &rp, (rff_id_t *)scp);
 if (isp->isp_dblev & ISP_LOGDEBUG1)
  isp_print_bytes(isp, "CT request", sizeof(rft_id_t), scp);

 if (isp_ct_passthru(isp, chan, sizeof(rft_id_t), sizeof(ct_hdr_t))) {
  FC_SCRATCH_RELEASE(isp, chan);
  return (-1);
 }

 isp_get_ct_hdr(isp, (ct_hdr_t *) scp, ct);
 FC_SCRATCH_RELEASE(isp, chan);
 if (ct->ct_cmd_resp == LS_RJT) {
  isp_prt(isp, ISP_LOG_SANCFG|ISP_LOG_WARN1,
      "Chan %d Register FC4 Features rejected", chan);
  return (-1);
 } else if (ct->ct_cmd_resp == LS_ACC) {
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d Register FC4 Features accepted", chan);
 } else {
  isp_prt(isp, ISP_LOGWARN,
      "Chan %d Register FC4 Features: 0x%x", chan, ct->ct_cmd_resp);
  return (-1);
 }
 return (0);
}

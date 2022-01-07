
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {scalar_t__ ct_cmd_resp; } ;
struct TYPE_12__ {scalar_t__* snscb_fc4_features; TYPE_1__ snscb_cthdr; } ;
typedef TYPE_2__ sns_gff_id_rsp_t ;
typedef int ispsoftc_t ;
struct TYPE_13__ {int isp_use_gff_id; int * isp_scratch; } ;
typedef TYPE_3__ fcparam ;
struct TYPE_14__ {int ct_bcnt_resid; int ct_cmd_resp; int ct_fcs_subtype; int ct_fcs_type; int ct_revision; } ;
typedef TYPE_4__ ct_hdr_t ;
typedef int ct ;


 int CT_FC_SUBTYPE_NS ;
 int CT_FC_TYPE_FC ;
 int CT_REVISION ;
 int FC4_SCSI ;
 TYPE_3__* FCPARAM (int *,int) ;
 scalar_t__ FC_SCRATCH_ACQUIRE (int *,int) ;
 int FC_SCRATCH_RELEASE (int *,int) ;
 int ISP_IOZPUT_32 (int *,int ,int *) ;
 int ISP_LOGDEBUG0 ;
 int ISP_LOGERR ;
 int ISP_MEMZERO (TYPE_4__*,int) ;
 int ISP_SWAP32 (int *,int) ;
 int IS_24XX (int *) ;
 scalar_t__ LS_ACC ;
 int SNS_GFF_ID ;
 int SNS_GFF_ID_RESP_SIZE ;
 scalar_t__ isp_ct_passthru (int *,int,int,int) ;
 int isp_get_gff_id_response (int *,TYPE_2__*,TYPE_2__*) ;
 int isp_prt (int *,int ,char*,...) ;
 int isp_put_ct_hdr (int *,TYPE_4__*,TYPE_4__*) ;
 int sacq ;

__attribute__((used)) static int
isp_gff_id(ispsoftc_t *isp, int chan, uint32_t portid)
{
 fcparam *fcp = FCPARAM(isp, chan);
 ct_hdr_t ct;
 uint32_t *rp;
 uint8_t *scp = fcp->isp_scratch;
 sns_gff_id_rsp_t rsp;
 int i, res = -1;

 if (!fcp->isp_use_gff_id)
  return (res);

 if (!IS_24XX(isp))
  return (res);

 isp_prt(isp, ISP_LOGDEBUG0, "Chan %d requesting GFF_ID", chan);
 if (FC_SCRATCH_ACQUIRE(isp, chan)) {
  isp_prt(isp, ISP_LOGERR, sacq);
  return (res);
 }


 ISP_MEMZERO(&ct, sizeof (ct));
 ct.ct_revision = CT_REVISION;
 ct.ct_fcs_type = CT_FC_TYPE_FC;
 ct.ct_fcs_subtype = CT_FC_SUBTYPE_NS;
 ct.ct_cmd_resp = SNS_GFF_ID;
 ct.ct_bcnt_resid = (SNS_GFF_ID_RESP_SIZE - sizeof(ct)) / 4;
 isp_put_ct_hdr(isp, &ct, (ct_hdr_t *)scp);
 rp = (uint32_t *) &scp[sizeof(ct)];
 ISP_IOZPUT_32(isp, portid, rp);

 if (isp_ct_passthru(isp, chan, sizeof(ct) + sizeof(uint32_t),
     SNS_GFF_ID_RESP_SIZE)) {
  FC_SCRATCH_RELEASE(isp, chan);
  return (res);
 }

 isp_get_gff_id_response(isp, (sns_gff_id_rsp_t *)scp, &rsp);
 if (rsp.snscb_cthdr.ct_cmd_resp == LS_ACC) {
  for (i = 0; i < 32; i++) {
   if (rsp.snscb_fc4_features[i] != 0) {
    res = 0;
    break;
   }
  }
  if (((rsp.snscb_fc4_features[FC4_SCSI / 8] >>
      ((FC4_SCSI % 8) * 4)) & 0x01) != 0)
   res = 1;

  if (((ISP_SWAP32(isp, rsp.snscb_fc4_features[FC4_SCSI / 8]) >>
      ((FC4_SCSI % 8) * 4)) & 0x01) != 0)
   res = 1;
 }
 FC_SCRATCH_RELEASE(isp, chan);
 isp_prt(isp, ISP_LOGDEBUG0, "Chan %d GFF_ID result is %d", chan, res);
 return (res);
}

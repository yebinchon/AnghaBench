
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int co_flags; } ;
struct TYPE_3__ {int sv_sm; } ;
struct smb_vc {int vc_hflags2; char* vc_srvname; int vc_ucs_tolocal; int vc_tolocal; int vc_ucs_toserver; int vc_toserver; TYPE_2__ obj; int vc_genid; int vc_ch; TYPE_1__ vc_sopt; int vc_toupper; int vc_cp_tolocal; int vc_cp_toserver; } ;
struct smb_share {char* ss_name; int ss_flags; int ss_vcgenid; int ss_tid; int ss_type; } ;
struct mbchain {int dummy; } ;
struct smb_rq {int sr_rptid; struct mbchain sr_rq; struct smb_vc* sr_vc; } ;
struct smb_cred {int dummy; } ;


 int MB_MSYSTEM ;
 int M_SMBTEMP ;
 int M_WAITOK ;
 int SMBSDEBUG (char*,int) ;
 int SMBS_CONNECTED ;
 int SMBV_UNICODE ;
 int SMB_COM_TREE_CONNECT_ANDX ;
 int SMB_CS_NONE ;
 int SMB_FLAGS2_UNICODE ;
 int SMB_MAXPASSWORDLEN ;
 int SMB_SM_ENCRYPT ;
 int SMB_SM_USER ;
 int SMB_TID_UNKNOWN ;
 int SSTOCP (struct smb_share*) ;
 struct smb_vc* SSTOVC (struct smb_share*) ;
 int free (char*,int ) ;
 int iconv_convstr (int ,char*,int ) ;
 char* malloc (int,int ,int ) ;
 int mb_put_mem (struct mbchain*,char*,int,int ) ;
 int mb_put_uint16le (struct mbchain*,int) ;
 int mb_put_uint8 (struct mbchain*,int) ;
 int smb_encrypt (char*,int ,char*) ;
 int smb_put_dmem (struct mbchain*,struct smb_vc*,char*,int,int) ;
 int smb_put_dstring (struct mbchain*,struct smb_vc*,char*,int) ;
 int smb_rq_alloc (int ,int ,struct smb_cred*,struct smb_rq**) ;
 int smb_rq_bend (struct smb_rq*) ;
 int smb_rq_bstart (struct smb_rq*) ;
 int smb_rq_done (struct smb_rq*) ;
 int smb_rq_simple (struct smb_rq*) ;
 int smb_rq_wend (struct smb_rq*) ;
 int smb_rq_wstart (struct smb_rq*) ;
 int smb_share_getpass (struct smb_share*) ;
 char* smb_share_typename (int ) ;
 int strlen (char*) ;
 int strncpy (char*,int ,int) ;

int
smb_smb_treeconnect(struct smb_share *ssp, struct smb_cred *scred)
{
 struct smb_vc *vcp;
 struct smb_rq rq, *rqp = &rq;
 struct mbchain *mbp;
 char *pp, *pbuf, *encpass;
 int error, plen, caseopt, upper;

 upper = 0;

again:

 if (SSTOVC(ssp)->vc_hflags2 & SMB_FLAGS2_UNICODE) {
  vcp = SSTOVC(ssp);
  vcp->vc_toserver = vcp->vc_cp_toserver;
  vcp->vc_tolocal = vcp->vc_cp_tolocal;
  vcp->vc_hflags2 &= ~SMB_FLAGS2_UNICODE;
 }

 ssp->ss_tid = SMB_TID_UNKNOWN;
 error = smb_rq_alloc(SSTOCP(ssp), SMB_COM_TREE_CONNECT_ANDX, scred, &rqp);
 if (error)
  return error;
 vcp = rqp->sr_vc;
 caseopt = SMB_CS_NONE;
 if (vcp->vc_sopt.sv_sm & SMB_SM_USER) {
  plen = 1;
  pp = "";
  pbuf = ((void*)0);
  encpass = ((void*)0);
 } else {
  pbuf = malloc(SMB_MAXPASSWORDLEN + 1, M_SMBTEMP, M_WAITOK);
  encpass = malloc(24, M_SMBTEMP, M_WAITOK);





  if (upper++) {
   iconv_convstr(vcp->vc_toupper, pbuf,
          smb_share_getpass(ssp) );

  } else {
   strncpy(pbuf, smb_share_getpass(ssp),
    SMB_MAXPASSWORDLEN);
   pbuf[SMB_MAXPASSWORDLEN] = '\0';
  }
  if (vcp->vc_sopt.sv_sm & SMB_SM_ENCRYPT) {
   plen = 24;
   smb_encrypt(pbuf, vcp->vc_ch, encpass);
   pp = encpass;
  } else {
   plen = strlen(pbuf) + 1;
   pp = pbuf;
  }
 }
 mbp = &rqp->sr_rq;
 smb_rq_wstart(rqp);
 mb_put_uint8(mbp, 0xff);
 mb_put_uint8(mbp, 0);
 mb_put_uint16le(mbp, 0);
 mb_put_uint16le(mbp, 0);
 mb_put_uint16le(mbp, plen);
 smb_rq_wend(rqp);
 smb_rq_bstart(rqp);
 mb_put_mem(mbp, pp, plen, MB_MSYSTEM);
 smb_put_dmem(mbp, vcp, "\\\\", 2, caseopt);
 pp = vcp->vc_srvname;
 smb_put_dmem(mbp, vcp, pp, strlen(pp), caseopt);
 smb_put_dmem(mbp, vcp, "\\", 1, caseopt);
 pp = ssp->ss_name;
 smb_put_dstring(mbp, vcp, pp, caseopt);
 pp = smb_share_typename(ssp->ss_type);
 smb_put_dstring(mbp, vcp, pp, caseopt);
 smb_rq_bend(rqp);
 error = smb_rq_simple(rqp);
 SMBSDEBUG("%d\n", error);
 if (error)
  goto bad;
 ssp->ss_tid = rqp->sr_rptid;
 ssp->ss_vcgenid = vcp->vc_genid;
 ssp->ss_flags |= SMBS_CONNECTED;




 if (vcp->obj.co_flags & SMBV_UNICODE) {
  vcp->vc_toserver = vcp->vc_ucs_toserver;
  vcp->vc_tolocal = vcp->vc_ucs_tolocal;
  vcp->vc_hflags2 |= SMB_FLAGS2_UNICODE;
 }
bad:
 if (encpass)
  free(encpass, M_SMBTEMP);
 if (pbuf)
  free(pbuf, M_SMBTEMP);
 smb_rq_done(rqp);
 if (error && upper == 1)
  goto again;
 return error;
}

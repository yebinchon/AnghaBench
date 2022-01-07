
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct smbiod {int iod_state; int iod_scred; int iod_flags; struct thread* iod_td; struct smb_vc* iod_vc; } ;
struct smb_vc {int vc_paddr; scalar_t__ vc_laddr; int vc_genid; } ;


 int EISCONN ;
 int ENOTCONN ;
 int SMBERROR (char*) ;
 int SMBIODEBUG (char*,...) ;

 int SMBIOD_ST_TRANACTIVE ;

 int SMBTP_SELECTID ;
 scalar_t__ SMB_TRAN_BIND (struct smb_vc*,scalar_t__,struct thread*) ;
 scalar_t__ SMB_TRAN_CONNECT (struct smb_vc*,int ,struct thread*) ;
 scalar_t__ SMB_TRAN_CREATE (struct smb_vc*,struct thread*) ;
 int SMB_TRAN_SETPARAM (struct smb_vc*,int ,int *) ;
 int smb_iod_dead (struct smbiod*) ;
 int smb_iod_invrq (struct smbiod*) ;
 scalar_t__ smb_smb_negotiate (struct smb_vc*,int *) ;
 scalar_t__ smb_smb_ssnsetup (struct smb_vc*,int *) ;

__attribute__((used)) static int
smb_iod_connect(struct smbiod *iod)
{
 struct smb_vc *vcp = iod->iod_vc;
 struct thread *td = iod->iod_td;
 int error;

 SMBIODEBUG("%d\n", iod->iod_state);
 switch(iod->iod_state) {
     case 128:
  SMBERROR("called for already opened connection\n");
  return EISCONN;
     case 129:
  return ENOTCONN;
     default:
  break;
 }
 vcp->vc_genid++;
 error = 0;

 error = (int)SMB_TRAN_CREATE(vcp, td);
 if (error)
  goto fail;
 SMBIODEBUG("tcreate\n");
 if (vcp->vc_laddr) {
  error = (int)SMB_TRAN_BIND(vcp, vcp->vc_laddr, td);
  if (error)
   goto fail;
 }
 SMBIODEBUG("tbind\n");
 error = (int)SMB_TRAN_CONNECT(vcp, vcp->vc_paddr, td);
 if (error)
  goto fail;
 SMB_TRAN_SETPARAM(vcp, SMBTP_SELECTID, &iod->iod_flags);
 iod->iod_state = SMBIOD_ST_TRANACTIVE;
 SMBIODEBUG("tconnect\n");

 error = (int)smb_smb_negotiate(vcp, &iod->iod_scred);
 if (error)
  goto fail;
 SMBIODEBUG("snegotiate\n");
 error = (int)smb_smb_ssnsetup(vcp, &iod->iod_scred);
 if (error)
  goto fail;
 iod->iod_state = 128;
 SMBIODEBUG("completed\n");
 smb_iod_invrq(iod);
 return (0);

 fail:
 smb_iod_dead(iod);
 return (error);
}

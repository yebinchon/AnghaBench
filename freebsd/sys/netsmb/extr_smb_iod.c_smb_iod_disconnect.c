
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbiod {scalar_t__ iod_state; int iod_scred; struct smb_vc* iod_vc; } ;
struct smb_vc {int vc_smbuid; } ;


 int SMBIODEBUG (char*) ;
 scalar_t__ SMBIOD_ST_NOTCONN ;
 scalar_t__ SMBIOD_ST_TRANACTIVE ;
 scalar_t__ SMBIOD_ST_VCACTIVE ;
 int SMB_UID_UNKNOWN ;
 int smb_iod_closetran (struct smbiod*) ;
 int smb_smb_ssnclose (struct smb_vc*,int *) ;

__attribute__((used)) static int
smb_iod_disconnect(struct smbiod *iod)
{
 struct smb_vc *vcp = iod->iod_vc;

 SMBIODEBUG("\n");
 if (iod->iod_state == SMBIOD_ST_VCACTIVE) {
  smb_smb_ssnclose(vcp, &iod->iod_scred);
  iod->iod_state = SMBIOD_ST_TRANACTIVE;
 }
 vcp->vc_smbuid = SMB_UID_UNKNOWN;
 smb_iod_closetran(iod);
 iod->iod_state = SMBIOD_ST_NOTCONN;
 return 0;
}

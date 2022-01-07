
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_dev {scalar_t__ refcount; struct smb_vc* sd_vc; struct smb_share* sd_share; } ;
struct smb_cred {scalar_t__ refcount; struct smb_vc* sd_vc; struct smb_share* sd_share; } ;


 int MPASS (int) ;
 int M_NSMBDEV ;
 int M_WAITOK ;
 int SMB_LOCKASSERT () ;
 int curthread ;
 int free (struct smb_dev*,int ) ;
 struct smb_dev* malloc (int,int ,int ) ;
 int panic (char*) ;
 int smb_makescred (struct smb_dev*,int ,int *) ;
 int smb_share_lock (struct smb_share*) ;
 int smb_share_rele (struct smb_share*,struct smb_dev*) ;
 int smb_vc_lock (struct smb_vc*) ;
 int smb_vc_rele (struct smb_vc*,struct smb_dev*) ;

void
sdp_trydestroy(struct smb_dev *sdp)
{
 struct smb_vc *vcp;
 struct smb_share *ssp;
 struct smb_cred *scred;

 SMB_LOCKASSERT();
 if (!sdp)
  panic("No smb_dev upon device close");
 MPASS(sdp->refcount > 0);
 sdp->refcount--;
 if (sdp->refcount)
  return;
 scred = malloc(sizeof(struct smb_cred), M_NSMBDEV, M_WAITOK);
 smb_makescred(scred, curthread, ((void*)0));
 ssp = sdp->sd_share;
 if (ssp != ((void*)0)) {
  smb_share_lock(ssp);
  smb_share_rele(ssp, scred);
 }
 vcp = sdp->sd_vc;
 if (vcp != ((void*)0)) {
  smb_vc_lock(vcp);
  smb_vc_rele(vcp, scred);
 }
 free(scred, M_NSMBDEV);
 free(sdp, M_NSMBDEV);
 return;
}

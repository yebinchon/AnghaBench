
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct uio {int uio_resid; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;


 int smb_smb_read (struct smb_share*,int ,int*,int*,struct uio*,struct smb_cred*) ;

int
smb_read(struct smb_share *ssp, u_int16_t fid, struct uio *uio,
 struct smb_cred *scred)
{
 int tsize, len, resid;
 int error = 0;

 tsize = uio->uio_resid;
 while (tsize > 0) {
  resid = 0;
  len = tsize;
  error = smb_smb_read(ssp, fid, &len, &resid, uio, scred);
  if (error)
   break;
  tsize -= resid;
  if (resid < len)
   break;
 }
 return error;
}

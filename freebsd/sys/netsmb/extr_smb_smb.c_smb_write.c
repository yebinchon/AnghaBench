
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct uio {int uio_resid; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;


 int EIO ;
 int smb_smb_write (struct smb_share*,int ,int*,int*,struct uio*,struct smb_cred*) ;

int
smb_write(struct smb_share *ssp, u_int16_t fid, struct uio *uio,
 struct smb_cred *scred)
{
 int error = 0, len, tsize, resid;
 struct uio olduio;

 tsize = uio->uio_resid;
 olduio = *uio;
 while (tsize > 0) {
  resid = 0;
  len = tsize;
  error = smb_smb_write(ssp, fid, &len, &resid, uio, scred);
  if (error)
   break;
  if (resid < len) {
   error = EIO;
   break;
  }
  tsize -= resid;
 }
 if (error) {







  *uio = olduio;
 }
 return error;
}

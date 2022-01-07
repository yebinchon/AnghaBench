
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbnode {char const* n_rpath; int n_rplen; } ;
struct smb_vc {int dummy; } ;
struct mbchain {int dummy; } ;


 int SMB_CS_NONE ;
 int SMB_CS_UPPER ;
 scalar_t__ SMB_DIALECT (struct smb_vc*) ;
 scalar_t__ SMB_DIALECT_LANMAN1_0 ;
 scalar_t__ SMB_UNICODE_STRINGS (struct smb_vc*) ;
 int mb_put_padbyte (struct mbchain*) ;
 int mb_put_uint16le (struct mbchain*,char) ;
 int mb_put_uint8 (struct mbchain*,char) ;
 int smb_put_dmem (struct mbchain*,struct smb_vc*,char const*,int,int) ;

int
smbfs_fullpath(struct mbchain *mbp, struct smb_vc *vcp, struct smbnode *dnp,
 const char *name, int nmlen)
{
 int caseopt = SMB_CS_NONE;
 int error;

 if (SMB_UNICODE_STRINGS(vcp)) {
  error = mb_put_padbyte(mbp);
  if (error)
   return error;
 }
 if (SMB_DIALECT(vcp) < SMB_DIALECT_LANMAN1_0)
  caseopt |= SMB_CS_UPPER;
 if (dnp != ((void*)0)) {
  error = smb_put_dmem(mbp, vcp, dnp->n_rpath, dnp->n_rplen,
      caseopt);
  if (error)
   return error;
  if (name) {

   if (SMB_UNICODE_STRINGS(vcp))
    error = mb_put_uint16le(mbp, '\\');
   else
    error = mb_put_uint8(mbp, '\\');
   if (error)
    return error;

   error = smb_put_dmem(mbp, vcp, name, nmlen, caseopt);
   if (error)
    return error;
  }
 }

 if (SMB_UNICODE_STRINGS(vcp))
  error = mb_put_uint16le(mbp, 0);
 else
  error = mb_put_uint8(mbp, 0);
 return error;
}

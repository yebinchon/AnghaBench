
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbnode {int n_ino; int n_vnode; } ;
struct smbfattr {int fa_attr; int fa_ino; } ;
struct smbfs_fctx {struct smbfattr f_attr; int f_flags; } ;
struct smb_cred {int dummy; } ;


 int ASSERT_VOP_ELOCKED (int ,char*) ;
 int MPASS (int) ;
 int SMBFS_RDD_FINDSINGLE ;
 int SMB_FA_DIR ;
 int SMB_FA_HIDDEN ;
 int SMB_FA_SYSTEM ;
 int bzero (struct smbfattr*,int) ;
 int smbfs_findclose (struct smbfs_fctx*,struct smb_cred*) ;
 int smbfs_findnext (struct smbfs_fctx*,int,struct smb_cred*) ;
 int smbfs_findopen (struct smbnode*,char const*,int,int,struct smb_cred*,struct smbfs_fctx**) ;

int
smbfs_smb_lookup(struct smbnode *dnp, const char *name, int nmlen,
 struct smbfattr *fap, struct smb_cred *scred)
{
 struct smbfs_fctx *ctx;
 int error;

 if (dnp == ((void*)0) || (dnp->n_ino == 2 && name == ((void*)0))) {
  bzero(fap, sizeof(*fap));
  fap->fa_attr = SMB_FA_DIR;
  fap->fa_ino = 2;
  return 0;
 }
 MPASS(!(nmlen == 2 && name[0] == '.' && name[1] == '.'));
 MPASS(!(nmlen == 1 && name[0] == '.'));
 ASSERT_VOP_ELOCKED(dnp->n_vnode, "smbfs_smb_lookup");
 error = smbfs_findopen(dnp, name, nmlen,
     SMB_FA_SYSTEM | SMB_FA_HIDDEN | SMB_FA_DIR, scred, &ctx);
 if (error)
  return error;
 ctx->f_flags |= SMBFS_RDD_FINDSINGLE;
 error = smbfs_findnext(ctx, 1, scred);
 if (error == 0) {
  *fap = ctx->f_attr;
  if (name == ((void*)0))
   fap->fa_ino = dnp->n_ino;
 }
 smbfs_findclose(ctx, scred);
 return error;
}

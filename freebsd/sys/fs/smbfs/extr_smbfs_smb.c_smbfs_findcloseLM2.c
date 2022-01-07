
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbfs_fctx {int f_flags; scalar_t__ f_t2; scalar_t__ f_name; } ;


 int M_SMBFSDATA ;
 int SMBFS_RDD_NOCLOSE ;
 int free (scalar_t__,int ) ;
 int smb_t2_done (scalar_t__) ;
 int smbfs_smb_findclose2 (struct smbfs_fctx*) ;

__attribute__((used)) static int
smbfs_findcloseLM2(struct smbfs_fctx *ctx)
{
 if (ctx->f_name)
  free(ctx->f_name, M_SMBFSDATA);
 if (ctx->f_t2)
  smb_t2_done(ctx->f_t2);
 if ((ctx->f_flags & SMBFS_RDD_NOCLOSE) == 0)
  smbfs_smb_findclose2(ctx);
 return 0;
}

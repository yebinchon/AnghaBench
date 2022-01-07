
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbfs_fctx {scalar_t__ f_rq; } ;


 int smb_rq_done (scalar_t__) ;

__attribute__((used)) static int
smbfs_findcloseLM1(struct smbfs_fctx *ctx)
{
 if (ctx->f_rq)
  smb_rq_done(ctx->f_rq);
 return 0;
}

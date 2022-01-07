
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int16_t ;
struct TYPE_5__ {int fa_ino; } ;
struct smbfs_fctx {int f_flags; int f_nmlen; char* f_name; TYPE_3__* f_dnp; TYPE_2__ f_attr; int f_ssp; struct smb_cred* f_scred; } ;
struct smb_cred {int dummy; } ;
struct TYPE_6__ {TYPE_1__* n_mount; } ;
struct TYPE_4__ {int sm_caseopt; } ;


 int SMBFS_RDD_USESEARCH ;
 scalar_t__ SMB_UNICODE_STRINGS (int ) ;
 int SSTOVC (int ) ;
 scalar_t__ htole16 (int) ;
 scalar_t__ htole32 (int) ;
 int smbfs_findnextLM1 (struct smbfs_fctx*,int) ;
 int smbfs_findnextLM2 (struct smbfs_fctx*,int) ;
 int smbfs_fname_tolocal (int ,char*,int*,int ) ;
 int smbfs_getino (TYPE_3__*,char*,int) ;

int
smbfs_findnext(struct smbfs_fctx *ctx, int limit, struct smb_cred *scred)
{
 int error;

 if (limit == 0)
  limit = 1000000;
 else if (limit > 1)
  limit *= 4;
 ctx->f_scred = scred;
 for (;;) {
  if (ctx->f_flags & SMBFS_RDD_USESEARCH) {
   error = smbfs_findnextLM1(ctx, limit);
  } else
   error = smbfs_findnextLM2(ctx, limit);
  if (error)
   return error;
  if (SMB_UNICODE_STRINGS(SSTOVC(ctx->f_ssp))) {
   if ((ctx->f_nmlen == 2 &&
        *(u_int16_t *)ctx->f_name == htole16(0x002e)) ||
       (ctx->f_nmlen == 4 &&
        *(u_int32_t *)ctx->f_name == htole32(0x002e002e)))
    continue;
  } else
   if ((ctx->f_nmlen == 1 && ctx->f_name[0] == '.') ||
       (ctx->f_nmlen == 2 && ctx->f_name[0] == '.' &&
        ctx->f_name[1] == '.'))
    continue;
  break;
 }
 smbfs_fname_tolocal(SSTOVC(ctx->f_ssp), ctx->f_name, &ctx->f_nmlen,
       ctx->f_dnp->n_mount->sm_caseopt);
 ctx->f_attr.fa_ino = smbfs_getino(ctx->f_dnp, ctx->f_name, ctx->f_nmlen);
 return 0;
}

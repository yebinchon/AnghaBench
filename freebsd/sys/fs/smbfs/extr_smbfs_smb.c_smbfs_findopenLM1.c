
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbnode {int dummy; } ;
struct smbfs_fctx {int f_attrmask; char* f_wildcard; int f_wclen; int f_fname; int f_name; } ;
struct smb_cred {int dummy; } ;



__attribute__((used)) static int
smbfs_findopenLM1(struct smbfs_fctx *ctx, struct smbnode *dnp,
 const char *wildcard, int wclen, int attr, struct smb_cred *scred)
{
 ctx->f_attrmask = attr;
 if (wildcard) {
  if (wclen == 1 && wildcard[0] == '*') {
   ctx->f_wildcard = "*.*";
   ctx->f_wclen = 3;
  } else {
   ctx->f_wildcard = wildcard;
   ctx->f_wclen = wclen;
  }
 } else {
  ctx->f_wildcard = ((void*)0);
  ctx->f_wclen = 0;
 }
 ctx->f_name = ctx->f_fname;
 return 0;
}

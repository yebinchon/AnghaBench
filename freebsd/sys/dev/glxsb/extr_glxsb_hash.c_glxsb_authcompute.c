
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union authctx {int dummy; } authctx ;
typedef int u_char ;
struct glxsb_session {int ses_mlen; int ses_octx; int ses_ictx; struct auth_hash* ses_axf; } ;
struct cryptodesc {int crd_inject; int crd_len; int crd_skip; } ;
struct auth_hash {int hashsize; int (* Final ) (int *,union authctx*) ;int (* Update ) (union authctx*,int *,int ) ;int ctxsize; } ;
typedef int caddr_t ;


 int HASH_MAX_LEN ;
 int bcopy (int ,union authctx*,int ) ;
 int crypto_apply (int,int ,int ,int ,int (*) (void*,void*,unsigned int),int ) ;
 int crypto_copyback (int,int ,int ,int ,int *) ;
 int stub1 (int *,union authctx*) ;
 int stub2 (union authctx*,int *,int ) ;
 int stub3 (int *,union authctx*) ;

__attribute__((used)) static int
glxsb_authcompute(struct glxsb_session *ses, struct cryptodesc *crd,
    caddr_t buf, int flags)
{
 u_char hash[HASH_MAX_LEN];
 struct auth_hash *axf;
 union authctx ctx;
 int error;

 axf = ses->ses_axf;
 bcopy(ses->ses_ictx, &ctx, axf->ctxsize);
 error = crypto_apply(flags, buf, crd->crd_skip, crd->crd_len,
     (int (*)(void *, void *, unsigned int))axf->Update, (caddr_t)&ctx);
 if (error != 0)
  return (error);
 axf->Final(hash, &ctx);

 bcopy(ses->ses_octx, &ctx, axf->ctxsize);
 axf->Update(&ctx, hash, axf->hashsize);
 axf->Final(hash, &ctx);


 crypto_copyback(flags, buf, crd->crd_inject,
 ses->ses_mlen == 0 ? axf->hashsize : ses->ses_mlen, hash);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union authctx {int dummy; } authctx ;
struct TYPE_2__ {int pads; struct auth_hash* auth_hash; } ;
struct ccr_session {TYPE_1__ hmac; } ;
struct auth_hash {int (* Init ) (union authctx*) ;} ;


 int stub1 (union authctx*) ;
 int t4_copy_partial_hash (int,union authctx*,int ) ;

__attribute__((used)) static void
ccr_init_hash_digest(struct ccr_session *s, int cri_alg)
{
 union authctx auth_ctx;
 struct auth_hash *axf;

 axf = s->hmac.auth_hash;
 axf->Init(&auth_ctx);
 t4_copy_partial_hash(cri_alg, &auth_ctx, s->hmac.pads);
}

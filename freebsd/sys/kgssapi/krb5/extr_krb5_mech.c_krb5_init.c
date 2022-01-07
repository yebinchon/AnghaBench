
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_context {int kc_lock; } ;
typedef scalar_t__ gss_ctx_id_t ;


 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
krb5_init(gss_ctx_id_t ctx)
{
 struct krb5_context *kc = (struct krb5_context *)ctx;

 mtx_init(&kc->kc_lock, "krb5 gss lock", ((void*)0), MTX_DEF);
}

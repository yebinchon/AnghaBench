
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {struct aes_state* ks_priv; } ;
struct aes_state {int as_lock; } ;


 int MTX_DEF ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int M_ZERO ;
 struct aes_state* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
aes_init(struct krb5_key_state *ks)
{
 struct aes_state *as;

 as = malloc(sizeof(struct aes_state), M_GSSAPI, M_WAITOK|M_ZERO);
 mtx_init(&as->as_lock, "gss aes lock", ((void*)0), MTX_DEF);
 ks->ks_priv = as;
}

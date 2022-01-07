
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {struct aes_state* ks_priv; } ;
struct aes_state {scalar_t__ as_session_aes; scalar_t__ as_session_sha1; int as_lock; } ;


 int M_GSSAPI ;
 int crypto_freesession (scalar_t__) ;
 int free (struct aes_state*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
aes_destroy(struct krb5_key_state *ks)
{
 struct aes_state *as = ks->ks_priv;

 if (as->as_session_aes != 0)
  crypto_freesession(as->as_session_aes);
 if (as->as_session_sha1 != 0)
  crypto_freesession(as->as_session_sha1);
 mtx_destroy(&as->as_lock);
 free(ks->ks_priv, M_GSSAPI);
}

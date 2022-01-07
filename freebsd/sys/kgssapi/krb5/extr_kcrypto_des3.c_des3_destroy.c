
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {struct des3_state* ks_priv; } ;
struct des3_state {int ds_lock; scalar_t__ ds_session; } ;


 int M_GSSAPI ;
 int crypto_freesession (scalar_t__) ;
 int free (struct des3_state*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
des3_destroy(struct krb5_key_state *ks)
{
 struct des3_state *ds = ks->ks_priv;

 if (ds->ds_session)
  crypto_freesession(ds->ds_session);
 mtx_destroy(&ds->ds_lock);
 free(ks->ks_priv, M_GSSAPI);
}

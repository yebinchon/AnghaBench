
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct krb5_key_state {struct krb5_key_state* ks_key; TYPE_1__* ks_class; int ks_refs; } ;
struct TYPE_2__ {int ec_keylen; int (* ec_destroy ) (struct krb5_key_state*) ;} ;


 int M_GSSAPI ;
 int bzero (struct krb5_key_state*,int ) ;
 int free (struct krb5_key_state*,int ) ;
 scalar_t__ refcount_release (int *) ;
 int stub1 (struct krb5_key_state*) ;

void
krb5_free_key(struct krb5_key_state *ks)
{

 if (refcount_release(&ks->ks_refs)) {
  ks->ks_class->ec_destroy(ks);
  bzero(ks->ks_key, ks->ks_class->ec_keylen);
  free(ks->ks_key, M_GSSAPI);
  free(ks, M_GSSAPI);
 }
}

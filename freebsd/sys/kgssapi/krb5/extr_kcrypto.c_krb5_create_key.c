
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {void* ks_key; int ks_refs; struct krb5_encryption_class const* ks_class; } ;
struct krb5_encryption_class {int ec_keylen; int (* ec_init ) (struct krb5_key_state*) ;} ;


 int M_GSSAPI ;
 int M_WAITOK ;
 void* malloc (int,int ,int ) ;
 int refcount_init (int *,int) ;
 int stub1 (struct krb5_key_state*) ;

struct krb5_key_state *
krb5_create_key(const struct krb5_encryption_class *ec)
{
 struct krb5_key_state *ks;

 ks = malloc(sizeof(struct krb5_key_state), M_GSSAPI, M_WAITOK);
 ks->ks_class = ec;
 refcount_init(&ks->ks_refs, 1);
 ks->ks_key = malloc(ec->ec_keylen, M_GSSAPI, M_WAITOK);
 ec->ec_init(ks);

 return (ks);
}

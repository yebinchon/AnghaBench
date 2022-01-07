
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct krb5_key_state {int ks_refs; struct krb5_encryption_class* ks_class; } ;
struct krb5_encryption_class {int ec_flags; } ;


 int EC_DERIVED_KEYS ;
 struct krb5_key_state* krb5_derive_key (struct krb5_key_state*,int*,int) ;
 int refcount_acquire (int *) ;

__attribute__((used)) static struct krb5_key_state *
krb5_get_usage_key(struct krb5_key_state *basekey, int usage, int which)
{
 const struct krb5_encryption_class *ec = basekey->ks_class;

 if (ec->ec_flags & EC_DERIVED_KEYS) {
  uint8_t constant[5];

  constant[0] = usage >> 24;
  constant[1] = usage >> 16;
  constant[2] = usage >> 8;
  constant[3] = usage;
  constant[4] = which;
  return (krb5_derive_key(basekey, constant, 5));
 } else {
  refcount_acquire(&basekey->ks_refs);
  return (basekey);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct krb5_key_state {TYPE_1__* ks_class; } ;
struct TYPE_2__ {int (* ec_set_key ) (struct krb5_key_state*,void const*) ;} ;


 int stub1 (struct krb5_key_state*,void const*) ;

__attribute__((used)) static __inline void
krb5_set_key(struct krb5_key_state *ks, const void *keydata)
{

 ks->ks_class->ec_set_key(ks, keydata);
}

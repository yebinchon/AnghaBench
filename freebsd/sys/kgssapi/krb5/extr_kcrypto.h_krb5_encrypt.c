
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct krb5_key_state {TYPE_1__* ks_class; } ;
struct TYPE_2__ {int (* ec_encrypt ) (struct krb5_key_state const*,struct mbuf*,size_t,size_t,void*,size_t) ;} ;


 int stub1 (struct krb5_key_state const*,struct mbuf*,size_t,size_t,void*,size_t) ;

__attribute__((used)) static __inline void
krb5_encrypt(const struct krb5_key_state *ks, struct mbuf *inout,
    size_t skip, size_t len, void *ivec, size_t ivlen)
{

 ks->ks_class->ec_encrypt(ks, inout, skip, len, ivec, ivlen);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct krb5_key_state {TYPE_1__* ks_class; } ;
struct TYPE_2__ {int (* ec_checksum ) (struct krb5_key_state const*,int,struct mbuf*,size_t,size_t,size_t) ;} ;


 int stub1 (struct krb5_key_state const*,int,struct mbuf*,size_t,size_t,size_t) ;

__attribute__((used)) static __inline void
krb5_checksum(const struct krb5_key_state *ks, int usage,
    struct mbuf *inout, size_t skip, size_t inlen, size_t outlen)
{

 ks->ks_class->ec_checksum(ks, usage, inout, skip, inlen, outlen);
}

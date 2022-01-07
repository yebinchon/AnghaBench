
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct krb5_key_state {int dummy; } ;


 int CRD_F_ENCRYPT ;
 int des3_encrypt_1 (struct krb5_key_state const*,struct mbuf*,size_t,size_t,void*,int ) ;

__attribute__((used)) static void
des3_encrypt(const struct krb5_key_state *ks, struct mbuf *inout,
    size_t skip, size_t len, void *ivec, size_t ivlen)
{

 des3_encrypt_1(ks, inout, skip, len, ivec, CRD_F_ENCRYPT);
}

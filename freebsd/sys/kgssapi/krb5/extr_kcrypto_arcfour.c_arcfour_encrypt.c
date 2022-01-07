
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rc4_state {int dummy; } ;
struct mbuf {int dummy; } ;
struct krb5_key_state {int dummy; } ;


 int arcfour_derive_key (struct krb5_key_state const*,int ,int *) ;
 int arcfour_hmac (int *,void*,size_t,int *) ;
 int m_apply (struct mbuf*,size_t,size_t,int ,struct rc4_state*) ;
 int rc4_crypt_int ;
 int rc4_init (struct rc4_state*,int *,int) ;

__attribute__((used)) static void
arcfour_encrypt(const struct krb5_key_state *ks, struct mbuf *inout,
    size_t skip, size_t len, void *ivec, size_t ivlen)
{
 struct rc4_state rs;
 uint8_t newkey[16];

 arcfour_derive_key(ks, 0, newkey);




 if (ivec) {
  uint8_t kk[16];
  arcfour_hmac(newkey, ivec, ivlen, kk);
  rc4_init(&rs, kk, 16);
 } else {
  rc4_init(&rs, newkey, 16);
 }

 m_apply(inout, skip, len, rc4_crypt_int, &rs);
}

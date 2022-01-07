
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mbuf {int m_len; int * m_data; } ;
struct krb5_key_state {struct krb5_encryption_class* ks_class; } ;
struct krb5_encryption_class {int ec_blocklen; int ec_keybits; } ;


 int MGET (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int bcopy (int *,int *,int) ;
 int free (int *,int ) ;
 struct krb5_key_state* krb5_create_key (struct krb5_encryption_class const*) ;
 int krb5_encrypt (struct krb5_key_state*,struct mbuf*,int ,int,int *,int ) ;
 int krb5_n_fold (int *,int,void*,size_t) ;
 int krb5_random_to_key (struct krb5_key_state*,int *) ;
 int m_free (struct mbuf*) ;
 int * malloc (int,int ,int ) ;
 int roundup (int,int) ;

struct krb5_key_state *
krb5_derive_key(struct krb5_key_state *inkey,
    void *constant, size_t constantlen)
{
 struct krb5_key_state *dk;
 const struct krb5_encryption_class *ec = inkey->ks_class;
 uint8_t *folded;
 uint8_t *bytes, *p, *q;
 struct mbuf *m;
 int randomlen, i;




 folded = malloc(ec->ec_blocklen, M_GSSAPI, M_WAITOK);
 krb5_n_fold(folded, ec->ec_blocklen, constant, constantlen);





 randomlen = roundup(ec->ec_keybits / 8, ec->ec_blocklen);
 bytes = malloc(randomlen, M_GSSAPI, M_WAITOK);
 MGET(m, M_WAITOK, MT_DATA);
 m->m_len = ec->ec_blocklen;
 for (i = 0, p = bytes, q = folded; i < randomlen;
      q = p, i += ec->ec_blocklen, p += ec->ec_blocklen) {
  bcopy(q, m->m_data, ec->ec_blocklen);
  krb5_encrypt(inkey, m, 0, ec->ec_blocklen, ((void*)0), 0);
  bcopy(m->m_data, p, ec->ec_blocklen);
 }
 m_free(m);

 dk = krb5_create_key(ec);
 krb5_random_to_key(dk, bytes);

 free(folded, M_GSSAPI);
 free(bytes, M_GSSAPI);

 return (dk);
}

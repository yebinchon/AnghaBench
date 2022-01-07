
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mbuf {int m_len; int* m_data; struct mbuf* m_next; } ;
struct krb5_key_state {TYPE_1__* ks_class; } ;
struct krb5_context {int kc_more_flags; int kc_local_seqnumber; struct krb5_key_state* kc_send_sign_Kc; } ;
struct TYPE_2__ {size_t ec_checksumlen; } ;
typedef int OM_uint32 ;


 int ACCEPTOR_SUBKEY ;
 int GSS_S_COMPLETE ;
 int GSS_TOKEN_ACCEPTOR_SUBKEY ;
 int GSS_TOKEN_SENT_BY_ACCEPTOR ;
 int KASSERT (int,char*) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MLEN ;
 int MT_DATA ;
 int M_ALIGN (struct mbuf*,int) ;
 int M_WAITOK ;
 int atomic_fetchadd_32 (int *,int) ;
 scalar_t__ is_acceptor (struct krb5_context*) ;
 int krb5_checksum (struct krb5_key_state*,int ,struct mbuf*,int ,size_t,size_t) ;
 size_t m_length (struct mbuf*,struct mbuf**) ;

__attribute__((used)) static OM_uint32
krb5_get_mic_new(struct krb5_context *kc, struct mbuf *m,
    struct mbuf **micp)
{
 struct krb5_key_state *key = kc->kc_send_sign_Kc;
 struct mbuf *mlast, *mic;
 uint8_t *p;
 int flags;
 size_t mlen, cklen;
 uint32_t seq;

 mlen = m_length(m, &mlast);
 cklen = key->ks_class->ec_checksumlen;

 KASSERT(16 + cklen <= MLEN, ("checksum too large for an mbuf"));
 MGET(mic, M_WAITOK, MT_DATA);
 M_ALIGN(mic, 16 + cklen);
 mic->m_len = 16 + cklen;
 p = mic->m_data;


 p[0] = 0x04;
 p[1] = 0x04;


 flags = 0;
 if (is_acceptor(kc))
  flags |= GSS_TOKEN_SENT_BY_ACCEPTOR;
 if (kc->kc_more_flags & ACCEPTOR_SUBKEY)
  flags |= GSS_TOKEN_ACCEPTOR_SUBKEY;
 p[2] = flags;


 p[3] = 0xff;
 p[4] = 0xff;
 p[5] = 0xff;
 p[6] = 0xff;
 p[7] = 0xff;


 p[8] = 0;
 p[9] = 0;
 p[10] = 0;
 p[11] = 0;
 seq = atomic_fetchadd_32(&kc->kc_local_seqnumber, 1);
 p[12] = (seq >> 24);
 p[13] = (seq >> 16);
 p[14] = (seq >> 8);
 p[15] = (seq >> 0);







 mlast->m_next = mic;
 krb5_checksum(key, 0, m, 0, mlen + 16, cklen);
 mlast->m_next = ((void*)0);

 *micp = mic;
 return (GSS_S_COMPLETE);
}

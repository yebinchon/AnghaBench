
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mbuf {int m_len; int* m_data; struct mbuf* m_next; } ;
struct krb5_context {int kc_tokenkey; int kc_local_seqnumber; TYPE_2__* kc_checksumkey; } ;
struct TYPE_4__ {TYPE_1__* ks_class; } ;
struct TYPE_3__ {size_t ec_checksumlen; } ;
typedef int OM_uint32 ;


 int GSS_S_COMPLETE ;
 int MGET (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_WAITOK ;
 int atomic_fetchadd_32 (int *,int) ;
 int bcopy (int*,...) ;
 scalar_t__ is_initiator (struct krb5_context*) ;
 int krb5_checksum (TYPE_2__*,int,struct mbuf*,int,int,size_t) ;
 int krb5_encrypt (int ,struct mbuf*,size_t,int,char*,int) ;
 int* krb5_make_token (char*,size_t,size_t,struct mbuf**) ;
 int m_free (struct mbuf*) ;
 size_t m_length (struct mbuf*,struct mbuf**) ;
 size_t token_length (int ) ;

__attribute__((used)) static OM_uint32
krb5_get_mic_old(struct krb5_context *kc, struct mbuf *m,
    struct mbuf **micp, uint8_t sgn_alg[2])
{
 struct mbuf *mlast, *mic, *tm;
 uint8_t *p, dir;
 size_t tlen, mlen, cklen;
 uint32_t seq;
 char buf[8];

 mlen = m_length(m, &mlast);

 tlen = token_length(kc->kc_tokenkey);
 p = krb5_make_token("\x01\x01", tlen, tlen, &mic);
 p += 2;
 *p++ = sgn_alg[0];
 *p++ = sgn_alg[1];

 *p++ = 0xff;
 *p++ = 0xff;
 *p++ = 0xff;
 *p++ = 0xff;







 cklen = kc->kc_checksumkey->ks_class->ec_checksumlen;

 mic->m_len = p - (uint8_t *) mic->m_data;
 mic->m_next = m;
 MGET(tm, M_WAITOK, MT_DATA);
 tm->m_len = cklen;
 mlast->m_next = tm;

 krb5_checksum(kc->kc_checksumkey, 15, mic, mic->m_len - 8,
     8 + mlen, cklen);
 bcopy(tm->m_data, p + 8, cklen);
 mic->m_next = ((void*)0);
 mlast->m_next = ((void*)0);
 m_free(tm);
 seq = atomic_fetchadd_32(&kc->kc_local_seqnumber, 1);
 if (sgn_alg[0] == 0x11) {
  p[0] = (seq >> 24);
  p[1] = (seq >> 16);
  p[2] = (seq >> 8);
  p[3] = (seq >> 0);
 } else {
  p[0] = (seq >> 0);
  p[1] = (seq >> 8);
  p[2] = (seq >> 16);
  p[3] = (seq >> 24);
 }
 if (is_initiator(kc)) {
  dir = 0;
 } else {
  dir = 0xff;
 }
 p[4] = dir;
 p[5] = dir;
 p[6] = dir;
 p[7] = dir;
 bcopy(p + 8, buf, 8);





 mic->m_len += 8 + cklen;
 krb5_encrypt(kc->kc_tokenkey, mic, mic->m_len - cklen - 8, 8, buf, 8);

 *micp = mic;
 return (GSS_S_COMPLETE);
}

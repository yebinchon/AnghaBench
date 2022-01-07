
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mbuf {size_t m_len; int* m_data; struct mbuf* m_next; } ;
struct TYPE_5__ {int km_flags; } ;
struct krb5_context {TYPE_2__ kc_msg_order; int kc_tokenkey; TYPE_3__* kc_checksumkey; } ;
struct TYPE_6__ {TYPE_1__* ks_class; } ;
struct TYPE_4__ {size_t ec_checksumlen; } ;
typedef int OM_uint32 ;


 int FALSE ;
 int GSS_C_REPLAY_FLAG ;
 int GSS_C_SEQUENCE_FLAG ;
 int GSS_S_BAD_SIG ;
 int GSS_S_COMPLETE ;
 int GSS_S_DEFECTIVE_TOKEN ;
 int MGET (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_WAITOK ;
 scalar_t__ bcmp (int*,int*,size_t) ;
 int bcopy (int*,int*,int) ;
 scalar_t__ is_initiator (struct krb5_context*) ;
 int krb5_checksum (TYPE_3__*,int,struct mbuf*,int,int,size_t) ;
 int krb5_decrypt (int ,struct mbuf*,int ,int,int*,int) ;
 int krb5_sequence_check (struct krb5_context*,int) ;
 int* krb5_verify_token (char*,size_t,struct mbuf**,size_t*,int ) ;
 int m_free (struct mbuf*) ;
 size_t m_length (struct mbuf*,struct mbuf**) ;
 size_t token_length (int ) ;

__attribute__((used)) static OM_uint32
krb5_verify_mic_old(struct krb5_context *kc, struct mbuf *m, struct mbuf *mic,
    uint8_t sgn_alg[2])
{
 struct mbuf *mlast, *tm;
 uint8_t *p, *tp, dir;
 size_t mlen, tlen, elen, miclen;
 size_t cklen;
 uint32_t seq;

 mlen = m_length(m, &mlast);

 tlen = token_length(kc->kc_tokenkey);
 p = krb5_verify_token("\x01\x01", tlen, &mic, &elen, FALSE);
 if (!p)
  return (GSS_S_DEFECTIVE_TOKEN);
 p += 2;


 if (p[0] != sgn_alg[0] || p[1] != sgn_alg[1])
  return (GSS_S_DEFECTIVE_TOKEN);
 p += 2;

 if (p[0] != 0xff || p[1] != 0xff || p[2] != 0xff || p[3] != 0xff)
  return (GSS_S_DEFECTIVE_TOKEN);
 p += 4;







 cklen = kc->kc_checksumkey->ks_class->ec_checksumlen;
 miclen = mic->m_len;
 mic->m_len = p - (uint8_t *) mic->m_data;
 mic->m_next = m;
 MGET(tm, M_WAITOK, MT_DATA);
 tm->m_len = cklen;
 mlast->m_next = tm;

 krb5_checksum(kc->kc_checksumkey, 15, mic, mic->m_len - 8,
     8 + mlen, cklen);
 mic->m_next = ((void*)0);
 mlast->m_next = ((void*)0);
 if (bcmp(tm->m_data, p + 8, cklen)) {
  m_free(tm);
  return (GSS_S_BAD_SIG);
 }
 bcopy(p, tm->m_data, 8);
 tm->m_len = 8;
 krb5_decrypt(kc->kc_tokenkey, tm, 0, 8, p + 8, 8);

 tp = tm->m_data;
 if (sgn_alg[0] == 0x11) {
  seq = tp[3] | (tp[2] << 8) | (tp[1] << 16) | (tp[0] << 24);
 } else {
  seq = tp[0] | (tp[1] << 8) | (tp[2] << 16) | (tp[3] << 24);
 }

 if (is_initiator(kc)) {
  dir = 0xff;
 } else {
  dir = 0;
 }
 if (tp[4] != dir || tp[5] != dir || tp[6] != dir || tp[7] != dir) {
  m_free(tm);
  return (GSS_S_DEFECTIVE_TOKEN);
 }
 m_free(tm);

 if (kc->kc_msg_order.km_flags &
  (GSS_C_REPLAY_FLAG | GSS_C_SEQUENCE_FLAG)) {
  return (krb5_sequence_check(kc, seq));
 }

 return (GSS_S_COMPLETE);
}

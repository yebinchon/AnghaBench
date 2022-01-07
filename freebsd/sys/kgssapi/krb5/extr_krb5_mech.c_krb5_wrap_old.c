
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mbuf {int m_data; int m_len; struct mbuf* m_next; } ;
struct krb5_context {TYPE_3__* kc_encryptkey; TYPE_3__* kc_tokenkey; int kc_local_seqnumber; TYPE_5__* kc_checksumkey; } ;
struct TYPE_9__ {TYPE_2__* ks_class; } ;
struct TYPE_8__ {TYPE_1__* ks_class; } ;
struct TYPE_7__ {size_t ec_checksumlen; } ;
struct TYPE_6__ {size_t ec_msgblocklen; } ;
typedef int OM_uint32 ;


 int GSS_S_COMPLETE ;
 int MGET (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_LEADINGSPACE (struct mbuf*) ;
 size_t M_TRAILINGSPACE (struct mbuf*) ;
 int M_WAITOK ;
 int arc4rand (int,int,int ) ;
 int atomic_fetchadd_32 (int *,int) ;
 int bcopy (int,int*,size_t) ;
 scalar_t__ is_initiator (struct krb5_context*) ;
 int krb5_checksum (TYPE_5__*,int,struct mbuf*,int,size_t,size_t) ;
 int krb5_encrypt (TYPE_3__*,struct mbuf*,int,size_t,int*,int) ;
 int* krb5_make_token (char*,size_t,size_t,struct mbuf**) ;
 int m_free (struct mbuf*) ;
 size_t m_length (struct mbuf*,struct mbuf**) ;
 int memset (int,size_t,size_t) ;
 size_t token_length (TYPE_3__*) ;

__attribute__((used)) static OM_uint32
krb5_wrap_old(struct krb5_context *kc, int conf_req_flag,
    struct mbuf **mp, int *conf_state,
    uint8_t sgn_alg[2], uint8_t seal_alg[2])
{
 struct mbuf *m, *mlast, *tm, *cm, *pm;
 size_t mlen, tlen, padlen, datalen;
 uint8_t *p, dir;
 size_t cklen;
 uint8_t buf[8];
 uint32_t seq;




 m = *mp;
 mlen = m_length(m, &mlast);
 tlen = kc->kc_tokenkey->ks_class->ec_msgblocklen;
 padlen = tlen - (mlen % tlen);







 datalen = mlen + 8 + padlen;
 tlen = token_length(kc->kc_tokenkey);

 p = krb5_make_token("\x02\x01", tlen, datalen + tlen, &tm);
 p += 2;
 *p++ = sgn_alg[0];
 *p++ = sgn_alg[1];
 if (conf_req_flag) {
  *p++ = seal_alg[0];
  *p++ = seal_alg[1];
 } else {
  *p++ = 0xff;
  *p++ = 0xff;
 }

 *p++ = 0xff;
 *p++ = 0xff;




 if (M_LEADINGSPACE(m) >= 8) {
  m->m_data -= 8;
  m->m_len += 8;
 } else {
  MGET(cm, M_WAITOK, MT_DATA);
  cm->m_len = 8;
  cm->m_next = m;
  m = cm;
 }
 arc4rand(m->m_data, 8, 0);
 if (M_TRAILINGSPACE(mlast) >= padlen) {
  memset(mlast->m_data + mlast->m_len, padlen, padlen);
  mlast->m_len += padlen;
 } else {
  MGET(pm, M_WAITOK, MT_DATA);
  memset(pm->m_data, padlen, padlen);
  pm->m_len = padlen;
  mlast->m_next = pm;
  mlast = pm;
 }
 tm->m_next = m;
 cklen = kc->kc_checksumkey->ks_class->ec_checksumlen;
 tlen = tm->m_len;
 tm->m_len = p - (uint8_t *) tm->m_data;
 MGET(cm, M_WAITOK, MT_DATA);
 cm->m_len = cklen;
 mlast->m_next = cm;
 krb5_checksum(kc->kc_checksumkey, 13, tm, tm->m_len - 8,
     datalen + 8, cklen);
 tm->m_len = tlen;
 mlast->m_next = ((void*)0);
 bcopy(cm->m_data, p + 8, cklen);
 m_free(cm);
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
 krb5_encrypt(kc->kc_tokenkey, tm, p - (uint8_t *) tm->m_data,
     8, p + 8, 8);

 if (conf_req_flag) {





  if (seal_alg[0] == 0x10) {
   buf[0] = (seq >> 24);
   buf[1] = (seq >> 16);
   buf[2] = (seq >> 8);
   buf[3] = (seq >> 0);
   krb5_encrypt(kc->kc_encryptkey, m, 0, datalen,
       buf, 4);
  } else {
   krb5_encrypt(kc->kc_encryptkey, m, 0, datalen,
       ((void*)0), 0);
  }
 }

 if (conf_state)
  *conf_state = conf_req_flag;

 *mp = tm;
 return (GSS_S_COMPLETE);
}

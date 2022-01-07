
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct tls_record_layer {scalar_t__ tls_vmajor; scalar_t__ tls_vminor; int tls_length; void* tls_type; } ;
struct mbuf_ext_pgs {int hdr_len; int trail_len; scalar_t__ npgs; scalar_t__ nrdy; void* record_type; scalar_t__ hdr; int tls; } ;
struct TYPE_3__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_ext; struct mbuf* m_next; } ;
struct TYPE_4__ {int max_frame_len; int tls_hlen; int tls_tlen; scalar_t__ cipher_algorithm; int tls_bs; scalar_t__ tls_vmajor; scalar_t__ tls_vminor; scalar_t__ iv; } ;
struct ktls_session {scalar_t__ mode; TYPE_2__ params; } ;


 int AES_BLOCK_LEN ;
 scalar_t__ CRYPTO_AES_CBC ;
 scalar_t__ CRYPTO_AES_NIST_GCM_16 ;
 int EINVAL ;
 int KASSERT (int,char*) ;
 int M_NOMAP ;
 int M_NOTREADY ;
 scalar_t__ TCP_TLS_MODE_SW ;
 scalar_t__ TLS_MAJOR_VER_ONE ;
 scalar_t__ TLS_MINOR_VER_ONE ;
 scalar_t__ TLS_MINOR_VER_THREE ;
 scalar_t__ TLS_MINOR_VER_TWO ;
 void* TLS_RLTYPE_APP ;
 int arc4rand (struct tls_record_layer*,int ,int ) ;
 int be64enc (struct tls_record_layer*,int ) ;
 int htons (int) ;
 int ktls_hold (struct ktls_session*) ;

int
ktls_frame(struct mbuf *top, struct ktls_session *tls, int *enq_cnt,
    uint8_t record_type)
{
 struct tls_record_layer *tlshdr;
 struct mbuf *m;
 struct mbuf_ext_pgs *pgs;
 uint64_t *noncep;
 uint16_t tls_len;
 int maxlen;

 maxlen = tls->params.max_frame_len;
 *enq_cnt = 0;
 for (m = top; m != ((void*)0); m = m->m_next) {





  if (m->m_len > maxlen || m->m_len == 0)
   return (EINVAL);
  tls_len = m->m_len;





  KASSERT((m->m_flags & M_NOMAP) != 0,
      ("ktls_frame: mapped mbuf %p (top = %p)\n", m, top));

  pgs = m->m_ext.ext_pgs;


  pgs->tls = ktls_hold(tls);

  pgs->hdr_len = tls->params.tls_hlen;
  pgs->trail_len = tls->params.tls_tlen;
  if (tls->params.cipher_algorithm == CRYPTO_AES_CBC) {
   int bs, delta;
   bs = tls->params.tls_bs;
   delta = (tls_len + tls->params.tls_tlen) & (bs - 1);
   pgs->trail_len -= delta;
  }
  m->m_len += pgs->hdr_len + pgs->trail_len;


  tlshdr = (void *)pgs->hdr;
  tlshdr->tls_vmajor = tls->params.tls_vmajor;





  if (tls->params.tls_vminor == TLS_MINOR_VER_THREE &&
      tls->params.tls_vmajor == TLS_MAJOR_VER_ONE) {
   tlshdr->tls_vminor = TLS_MINOR_VER_TWO;
   tlshdr->tls_type = TLS_RLTYPE_APP;

   pgs->record_type = record_type;
  } else {
   tlshdr->tls_vminor = tls->params.tls_vminor;
   tlshdr->tls_type = record_type;
  }
  tlshdr->tls_length = htons(m->m_len - sizeof(*tlshdr));
  if (tls->params.cipher_algorithm == CRYPTO_AES_NIST_GCM_16 &&
      tls->params.tls_vminor == TLS_MINOR_VER_TWO) {
   noncep = (uint64_t *)(tls->params.iv + 8);
   be64enc(tlshdr + 1, *noncep);
   (*noncep)++;
  } else if (tls->params.cipher_algorithm == CRYPTO_AES_CBC &&
      tls->params.tls_vminor >= TLS_MINOR_VER_ONE)
   arc4rand(tlshdr + 1, AES_BLOCK_LEN, 0);
  if (tls->mode == TCP_TLS_MODE_SW) {
   m->m_flags |= M_NOTREADY;
   pgs->nrdy = pgs->npgs;
   *enq_cnt += pgs->npgs;
  }
 }
 return (0);
}

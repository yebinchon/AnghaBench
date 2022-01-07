
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; scalar_t__ uio_iov; } ;
struct mbuf {struct mbuf* m_next; int m_len; } ;
struct iovec {int iov_len; } ;
struct cryptop {int crp_flags; int crp_ilen; scalar_t__ crp_buf; } ;


 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 unsigned int NLM_CRYPTO_NUM_SEGS_REQD (int ) ;

__attribute__((used)) static int
xlp_get_nsegs(struct cryptop *crp, unsigned int *nsegs)
{

 if (crp->crp_flags & CRYPTO_F_IMBUF) {
  struct mbuf *m = ((void*)0);

  m = (struct mbuf *)crp->crp_buf;
  while (m != ((void*)0)) {
   *nsegs += NLM_CRYPTO_NUM_SEGS_REQD(m->m_len);
   m = m->m_next;
  }
 } else if (crp->crp_flags & CRYPTO_F_IOV) {
  struct uio *uio = ((void*)0);
  struct iovec *iov = ((void*)0);
  int iol = 0;

  uio = (struct uio *)crp->crp_buf;
  iov = (struct iovec *)uio->uio_iov;
  iol = uio->uio_iovcnt;
  while (iol > 0) {
   *nsegs += NLM_CRYPTO_NUM_SEGS_REQD(iov->iov_len);
   iol--;
   iov++;
  }
 } else {
  *nsegs = NLM_CRYPTO_NUM_SEGS_REQD(crp->crp_ilen);
 }
 return (0);
}

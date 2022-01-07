
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mbuf {size_t m_len; int m_offset; } ;


 int MBUF_CTOP (struct mbuf*) ;
 struct mbuf* m_free (struct mbuf*) ;
 int memcpy (int *,int ,int) ;

struct mbuf *
mbuf_Read(struct mbuf *bp, void *v, size_t len)
{
  int nb;
  u_char *ptr = v;

  while (bp && len > 0) {
    if (len > bp->m_len)
      nb = bp->m_len;
    else
      nb = len;
    if (nb) {
      memcpy(ptr, MBUF_CTOP(bp), nb);
      ptr += nb;
      bp->m_len -= nb;
      len -= nb;
      bp->m_offset += nb;
    }
    if (bp->m_len == 0)
      bp = m_free(bp);
  }

  while (bp && bp->m_len == 0)
    bp = m_free(bp);

  return bp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mbuf {int m_offset; int m_len; int m_type; int * m_next; } ;


 int * MBUF_CTOP (struct mbuf*) ;
 int bcopy (int *,struct mbuf*,int ) ;
 struct mbuf* m_free (struct mbuf*) ;
 struct mbuf* m_get (int ,int ) ;
 int m_length (struct mbuf*) ;
 int memcpy (int *,int *,int ) ;

struct mbuf *
m_pullup(struct mbuf *bp)
{


  if (bp != ((void*)0)) {
    if (bp->m_next != ((void*)0)) {
      struct mbuf *nbp;
      u_char *cp;

      nbp = m_get(m_length(bp), bp->m_type);

      for (cp = MBUF_CTOP(nbp); bp; bp = m_free(bp)) {
        memcpy(cp, MBUF_CTOP(bp), bp->m_len);
        cp += bp->m_len;
      }
      bp = nbp;
    }

    else if ((bp->m_offset & (sizeof(long) - 1)) != 0) {
      bcopy(MBUF_CTOP(bp), bp + 1, bp->m_len);
      bp->m_offset = 0;
    }

  }

  return bp;
}

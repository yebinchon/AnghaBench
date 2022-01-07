
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct wi_softc {int sc_txbuf; } ;
struct mbuf {scalar_t__ m_len; scalar_t__ m_data; struct mbuf* m_next; } ;
typedef scalar_t__ caddr_t ;


 int m_copydata (struct mbuf*,int ,int,scalar_t__) ;
 int min (scalar_t__,int) ;
 int wi_write_bap (struct wi_softc*,int,int,scalar_t__,int) ;

__attribute__((used)) static int
wi_mwrite_bap(struct wi_softc *sc, int id, int off, struct mbuf *m0, int totlen)
{
 int error, len;
 struct mbuf *m;

 for (m = m0; m != ((void*)0) && totlen > 0; m = m->m_next) {
  if (m->m_len == 0)
   continue;

  len = min(m->m_len, totlen);

  if (((u_long)m->m_data) % 2 != 0 || len % 2 != 0) {
   m_copydata(m, 0, totlen, (caddr_t)&sc->sc_txbuf);
   return wi_write_bap(sc, id, off, (caddr_t)&sc->sc_txbuf,
       totlen);
  }

  if ((error = wi_write_bap(sc, id, off, m->m_data, len)) != 0)
   return error;

  off += m->m_len;
  totlen -= len;
 }
 return 0;
}

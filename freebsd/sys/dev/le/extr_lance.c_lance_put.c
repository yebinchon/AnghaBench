
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; } ;
struct lance_softc {int (* sc_zerobuf ) (struct lance_softc*,int,int) ;int (* sc_copytobuf ) (struct lance_softc*,int ,int,int) ;} ;


 int LEMINSIZE ;
 int LE_LOCK_ASSERT (struct lance_softc*,int ) ;
 int MA_OWNED ;
 int caddr_t ;
 struct mbuf* m_free (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int stub1 (struct lance_softc*,int ,int,int) ;
 int stub2 (struct lance_softc*,int,int) ;

int
lance_put(struct lance_softc *sc, int boff, struct mbuf *m)
{
 struct mbuf *n;
 int len, tlen = 0;

 LE_LOCK_ASSERT(sc, MA_OWNED);

 for (; m; m = n) {
  len = m->m_len;
  if (len == 0) {
   n = m_free(m);
   m = ((void*)0);
   continue;
  }
  (*sc->sc_copytobuf)(sc, mtod(m, caddr_t), boff, len);
  boff += len;
  tlen += len;
  n = m_free(m);
  m = ((void*)0);
 }
 if (tlen < LEMINSIZE) {
  (*sc->sc_zerobuf)(sc, boff, LEMINSIZE - tlen);
  tlen = LEMINSIZE;
 }
 return (tlen);
}

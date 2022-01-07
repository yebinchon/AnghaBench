
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int page_count; int pktbuf_count; } ;


 int r92c_llt_write (struct rtwn_softc*,int,int) ;

int
r92c_llt_init(struct rtwn_softc *sc)
{
 int i, error;


 for (i = 0; i < sc->page_count; i++) {
  if ((error = r92c_llt_write(sc, i, i + 1)) != 0)
   return (error);
 }

 if ((error = r92c_llt_write(sc, i, 0xff)) != 0)
  return (error);




 for (++i; i < sc->pktbuf_count - 1; i++) {
  if ((error = r92c_llt_write(sc, i, i + 1)) != 0)
   return (error);
 }

 error = r92c_llt_write(sc, i, sc->page_count + 1);
 return (error);
}

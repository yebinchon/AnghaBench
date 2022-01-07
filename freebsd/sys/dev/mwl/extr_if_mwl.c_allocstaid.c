
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int sc_staid; } ;


 int MWL_MAXSTAID ;
 scalar_t__ isclr (int ,int) ;
 scalar_t__ isset (int ,int) ;
 int setbit (int ,int) ;

__attribute__((used)) static int
allocstaid(struct mwl_softc *sc, int aid)
{
 int staid;

 if (!(0 < aid && aid < MWL_MAXSTAID) || isset(sc->sc_staid, aid)) {

  for (staid = 1; staid < MWL_MAXSTAID; staid++)
   if (isclr(sc->sc_staid, staid))
    break;
 } else
  staid = aid;
 setbit(sc->sc_staid, staid);
 return staid;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {scalar_t__ xl_type; } ;


 scalar_t__ XL_TYPE_905B ;
 int xl_rxfilter_90x (struct xl_softc*) ;
 int xl_rxfilter_90xB (struct xl_softc*) ;

__attribute__((used)) static void
xl_rxfilter(struct xl_softc *sc)
{

 if (sc->xl_type == XL_TYPE_905B)
  xl_rxfilter_90xB(sc);
 else
  xl_rxfilter_90x(sc);
}

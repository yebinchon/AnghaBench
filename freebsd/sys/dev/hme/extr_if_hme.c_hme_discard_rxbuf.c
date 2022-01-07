
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rb_rxdesc; int rb_rxd; } ;
struct hme_softc {int sc_flags; TYPE_1__ sc_rb; } ;


 int HME_DESC_RXLEN (struct hme_softc*,int *) ;
 int HME_PCI ;
 int HME_XD_ENCODE_RSIZE (int ) ;
 int HME_XD_OWN ;
 int HME_XD_SETFLAGS (int,int ,int,int) ;

__attribute__((used)) static __inline void
hme_discard_rxbuf(struct hme_softc *sc, int ix)
{





 HME_XD_SETFLAGS(sc->sc_flags & HME_PCI, sc->sc_rb.rb_rxd,
     ix, HME_XD_OWN | HME_XD_ENCODE_RSIZE(HME_DESC_RXLEN(sc,
     &sc->sc_rb.rb_rxdesc[ix])));
}

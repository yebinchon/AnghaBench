
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_plx_softc {scalar_t__ b2b_mw; scalar_t__ link; } ;
typedef int device_t ;


 int BNTX_WRITE (struct ntb_plx_softc*,int,int ) ;
 int NTX_WRITE (struct ntb_plx_softc*,int,int ) ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ntb_plx_peer_db_set(device_t dev, uint64_t bit)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);

 if (sc->b2b_mw >= 0)
  BNTX_WRITE(sc, 0xc4c, bit);
 else
  NTX_WRITE(sc, sc->link ? 0xc4c : 0xc5c, bit);
}

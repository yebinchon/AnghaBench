
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_plx_softc {scalar_t__ link; } ;
typedef int device_t ;


 int NTX_WRITE (struct ntb_plx_softc*,int,int ) ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ntb_plx_db_set_mask(device_t dev, uint64_t bits)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);

 NTX_WRITE(sc, sc->link ? 0xc64 : 0xc54, bits);
}

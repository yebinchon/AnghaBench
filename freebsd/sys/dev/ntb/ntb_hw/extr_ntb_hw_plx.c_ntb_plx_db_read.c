
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ntb_plx_softc {scalar_t__ link; } ;
typedef int device_t ;


 int NTX_READ (struct ntb_plx_softc*,int) ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static uint64_t
ntb_plx_db_read(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);

 return (NTX_READ(sc, sc->link ? 0xc5c : 0xc4c));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ntb_plx_softc {int split; scalar_t__ b2b_mw; scalar_t__ b2b_off; scalar_t__ mw_count; } ;
typedef int device_t ;


 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
ntb_plx_mw_count(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 uint8_t res;

 res = sc->mw_count;
 res += (1 << sc->split) - 1;
 if (sc->b2b_mw >= 0 && sc->b2b_off == 0)
  res--;
 return (res);
}

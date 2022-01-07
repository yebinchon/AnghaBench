
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ntb_plx_softc {scalar_t__ spad_count2; scalar_t__ spad_count1; } ;
typedef int device_t ;


 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
ntb_plx_spad_count(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);

 return (sc->spad_count1 + sc->spad_count2);
}

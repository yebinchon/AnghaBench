
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_plx_softc {int spad_count1; int spad_count2; } ;
typedef int device_t ;


 struct ntb_plx_softc* device_get_softc (int ) ;
 int ntb_plx_spad_write (int ,int,int ) ;

__attribute__((used)) static void
ntb_plx_spad_clear(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->spad_count1 + sc->spad_count2; i++)
  ntb_plx_spad_write(dev, i, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ntb_plx_softc {scalar_t__ link; } ;
typedef void* device_t ;


 int NTX_READ (struct ntb_plx_softc*,int) ;
 int NTX_WRITE (struct ntb_plx_softc*,int,int) ;
 struct ntb_plx_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int ntb_db_event (void*,int ) ;
 int ntb_link_event (void*) ;
 int ntb_plx_init (void*) ;

__attribute__((used)) static void
ntb_plx_isr(void *arg)
{
 device_t dev = arg;
 struct ntb_plx_softc *sc = device_get_softc(dev);
 uint32_t val;

 ntb_db_event((device_t)arg, 0);

 if (sc->link)
  return;

 val = NTX_READ(sc, 0xfe0);
 if (val == 0)
  return;
 NTX_WRITE(sc, 0xfe0, val);
 if (val & 1)
  device_printf(dev, "Correctable Error\n");
 if (val & 2)
  device_printf(dev, "Uncorrectable Error\n");
 if (val & 4) {

  ntb_plx_init(dev);
  ntb_link_event(dev);
 }
 if (val & 8)
  device_printf(dev, "Uncorrectable Error Message Drop\n");
}

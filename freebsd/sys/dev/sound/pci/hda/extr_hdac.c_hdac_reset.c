
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdac_softc {int num_iss; int num_oss; int num_bss; int dev; int mem; } ;


 int DELAY (int) ;
 int ENXIO ;
 int HDAC_BSDCTL (struct hdac_softc*,int) ;
 int HDAC_CORBCTL ;
 int HDAC_DPIBLBASE ;
 int HDAC_DPIBUBASE ;
 int HDAC_GCTL ;
 int HDAC_GCTL_CRST ;
 int HDAC_ISDCTL (struct hdac_softc*,int) ;
 int HDAC_OSDCTL (struct hdac_softc*,int) ;
 int HDAC_READ_4 (int *,int ) ;
 int HDAC_RIRBCTL ;
 int HDAC_WRITE_1 (int *,int ,int) ;
 int HDAC_WRITE_4 (int *,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
hdac_reset(struct hdac_softc *sc, int wakeup)
{
 uint32_t gctl;
 int count, i;




 for (i = 0; i < sc->num_iss; i++)
  HDAC_WRITE_4(&sc->mem, HDAC_ISDCTL(sc, i), 0x0);
 for (i = 0; i < sc->num_oss; i++)
  HDAC_WRITE_4(&sc->mem, HDAC_OSDCTL(sc, i), 0x0);
 for (i = 0; i < sc->num_bss; i++)
  HDAC_WRITE_4(&sc->mem, HDAC_BSDCTL(sc, i), 0x0);




 HDAC_WRITE_1(&sc->mem, HDAC_CORBCTL, 0x0);
 HDAC_WRITE_1(&sc->mem, HDAC_RIRBCTL, 0x0);




 HDAC_WRITE_4(&sc->mem, HDAC_DPIBLBASE, 0x0);
 HDAC_WRITE_4(&sc->mem, HDAC_DPIBUBASE, 0x0);





 gctl = HDAC_READ_4(&sc->mem, HDAC_GCTL);
 HDAC_WRITE_4(&sc->mem, HDAC_GCTL, gctl & ~HDAC_GCTL_CRST);
 count = 10000;
 do {
  gctl = HDAC_READ_4(&sc->mem, HDAC_GCTL);
  if (!(gctl & HDAC_GCTL_CRST))
   break;
  DELAY(10);
 } while (--count);
 if (gctl & HDAC_GCTL_CRST) {
  device_printf(sc->dev, "Unable to put hdac in reset\n");
  return (ENXIO);
 }


 if (!wakeup)
  return (0);

 DELAY(100);
 gctl = HDAC_READ_4(&sc->mem, HDAC_GCTL);
 HDAC_WRITE_4(&sc->mem, HDAC_GCTL, gctl | HDAC_GCTL_CRST);
 count = 10000;
 do {
  gctl = HDAC_READ_4(&sc->mem, HDAC_GCTL);
  if (gctl & HDAC_GCTL_CRST)
   break;
  DELAY(10);
 } while (--count);
 if (!(gctl & HDAC_GCTL_CRST)) {
  device_printf(sc->dev, "Device stuck in reset\n");
  return (ENXIO);
 }







 DELAY(1000);

 return (0);
}

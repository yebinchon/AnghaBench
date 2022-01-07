
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdac_softc {int mem; } ;
typedef int device_t ;


 int DELAY (int) ;
 int HDAC_READ_1 (int *,scalar_t__) ;
 scalar_t__ HDAC_SDCTL0 ;
 int HDAC_SDCTL_SRST ;
 int HDAC_WRITE_1 (int *,scalar_t__,int) ;
 int KASSERT (int,char*) ;
 struct hdac_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hdac_find_stream (struct hdac_softc*,int,int) ;

__attribute__((used)) static void
hdac_stream_reset(device_t dev, device_t child, int dir, int stream)
{
 struct hdac_softc *sc = device_get_softc(dev);
 int timeout = 1000;
 int to = timeout;
 int ss, off;
 uint32_t ctl;

 ss = hdac_find_stream(sc, dir, stream);
 KASSERT(ss >= 0,
     ("Reset for not allocated stream (%d/%d)\n", dir, stream));

 off = ss << 5;
 ctl = HDAC_READ_1(&sc->mem, off + HDAC_SDCTL0);
 ctl |= HDAC_SDCTL_SRST;
 HDAC_WRITE_1(&sc->mem, off + HDAC_SDCTL0, ctl);
 do {
  ctl = HDAC_READ_1(&sc->mem, off + HDAC_SDCTL0);
  if (ctl & HDAC_SDCTL_SRST)
   break;
  DELAY(10);
 } while (--to);
 if (!(ctl & HDAC_SDCTL_SRST))
  device_printf(dev, "Reset setting timeout\n");
 ctl &= ~HDAC_SDCTL_SRST;
 HDAC_WRITE_1(&sc->mem, off + HDAC_SDCTL0, ctl);
 to = timeout;
 do {
  ctl = HDAC_READ_1(&sc->mem, off + HDAC_SDCTL0);
  if (!(ctl & HDAC_SDCTL_SRST))
   break;
  DELAY(10);
 } while (--to);
 if (ctl & HDAC_SDCTL_SRST)
  device_printf(dev, "Reset timeout!\n");
}

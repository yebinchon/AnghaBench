
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_softc {int qman_chan_count; int qman_chan_base; } ;
typedef int device_t ;


 struct fman_softc* device_get_softc (int ) ;

int
fman_qman_channel_id(device_t dev, int port)
{
 struct fman_softc *sc;
 int qman_port_id[] = {0x31, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e,
     0x2f, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07};
 int i;

 sc = device_get_softc(dev);
 for (i = 0; i < sc->qman_chan_count; i++) {
  if (qman_port_id[i] == port)
   return (sc->qman_chan_base + i);
 }

 return (0);
}

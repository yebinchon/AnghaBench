
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct uio {size_t uio_resid; } ;
struct cyapa_softc {int data_signal; int delta_x; int delta_y; scalar_t__ track_but; scalar_t__ reported_but; int delta_z; int zenabled; int blocked; int rfifo; int mutex; int fuzz_z; int fuzz_y; int fuzz_x; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;


 int CYAPA_FNGR_LEFT ;
 int CYAPA_FNGR_MIDDLE ;
 int CYAPA_FNGR_RIGHT ;
 int EWOULDBLOCK ;
 int IO_NDELAY ;
 int PCATCH ;
 int cyapa_fuzz (int,int *) ;
 int cyapa_lock (struct cyapa_softc*) ;
 int cyapa_notify (struct cyapa_softc*) ;
 int cyapa_unlock (struct cyapa_softc*) ;
 scalar_t__ fifo_empty (struct cyapa_softc*,int *) ;
 char* fifo_read (struct cyapa_softc*,int *,size_t) ;
 size_t fifo_ready (struct cyapa_softc*,int *) ;
 int fifo_write_char (struct cyapa_softc*,int *,int) ;
 int mtx_sleep (int*,int *,int ,char*,int ) ;
 int uiomove (char*,size_t,struct uio*) ;

__attribute__((used)) static int
cyaparead(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct cyapa_softc *sc;
 int error;
 int didread;
 size_t n;
 char* ptr;

 sc = dev->si_drv1;

 cyapa_lock(sc);
again:
 if (fifo_empty(sc, &sc->rfifo) &&
     (sc->data_signal || sc->delta_x || sc->delta_y ||
      sc->track_but != sc->reported_but)) {
  uint8_t c0;
  uint16_t but;
  int delta_x;
  int delta_y;
  int delta_z;


  sc->data_signal = 0;
  delta_x = sc->delta_x;
  delta_y = sc->delta_y;
  delta_z = sc->delta_z;
  if (delta_x > 255) {
   delta_x = 255;
   sc->data_signal = 1;
  }
  if (delta_x < -256) {
   delta_x = -256;
   sc->data_signal = 1;
  }
  if (delta_y > 255) {
   delta_y = 255;
   sc->data_signal = 1;
  }
  if (delta_y < -256) {
   delta_y = -256;
   sc->data_signal = 1;
  }
  if (delta_z > 255) {
   delta_z = 255;
   sc->data_signal = 1;
  }
  if (delta_z < -256) {
   delta_z = -256;
   sc->data_signal = 1;
  }
  but = sc->track_but;


  sc->delta_x -= delta_x;
  sc->delta_y -= delta_y;
  sc->delta_z -= delta_z;
  sc->reported_but = but;







  delta_x = cyapa_fuzz(delta_x, &sc->fuzz_x);
  delta_y = cyapa_fuzz(delta_y, &sc->fuzz_y);
  delta_z = cyapa_fuzz(delta_z, &sc->fuzz_z);




  c0 = 0;
  if (delta_x < 0)
   c0 |= 0x10;
  if (delta_y < 0)
   c0 |= 0x20;
  c0 |= 0x08;
  if (but & CYAPA_FNGR_LEFT)
   c0 |= 0x01;
  if (but & CYAPA_FNGR_MIDDLE)
   c0 |= 0x04;
  if (but & CYAPA_FNGR_RIGHT)
   c0 |= 0x02;

  fifo_write_char(sc, &sc->rfifo, c0);
  fifo_write_char(sc, &sc->rfifo, (uint8_t)delta_x);
  fifo_write_char(sc, &sc->rfifo, (uint8_t)delta_y);
  switch(sc->zenabled) {
  case 1:

   fifo_write_char(sc, &sc->rfifo, (uint8_t)delta_z);
   break;
  case 2:






   while (delta_z > 7 || delta_z < -8)
    delta_z >>= 1;
   c0 = (uint8_t)delta_z & 0x0F;
   fifo_write_char(sc, &sc->rfifo, c0);
   break;
  default:

   break;
  }
  cyapa_notify(sc);
 }


 error = 0;
 didread = (uio->uio_resid == 0);

 while ((ioflag & IO_NDELAY) == 0 && fifo_empty(sc, &sc->rfifo)) {
  if (sc->data_signal)
   goto again;
  sc->blocked = 1;
  error = mtx_sleep(&sc->blocked, &sc->mutex, PCATCH, "cyablk", 0);
  if (error)
   break;
 }


 while (error == 0 && uio->uio_resid &&
     (n = fifo_ready(sc, &sc->rfifo)) > 0) {
  if (n > uio->uio_resid)
   n = uio->uio_resid;
  ptr = fifo_read(sc, &sc->rfifo, 0);
  cyapa_unlock(sc);
  error = uiomove(ptr, n, uio);
  cyapa_lock(sc);
  if (error)
   break;
  fifo_read(sc, &sc->rfifo, n);
  didread = 1;
 }
 cyapa_unlock(sc);

 if (error == 0 && didread == 0) {
  error = EWOULDBLOCK;
 }
 return (didread ? 0 : error);
}

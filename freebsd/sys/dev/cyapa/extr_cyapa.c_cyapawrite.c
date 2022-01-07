
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct uio {size_t uio_resid; } ;
struct TYPE_2__ {int resolution; int rate; int level; } ;
struct cyapa_softc {int ps2_cmd; int scaling_mode; scalar_t__ ps2_acked; int remote_mode; int reporting_mode; int track_but; int data_signal; int zenabled; TYPE_1__ mode; int delta_z; int delta_y; int delta_x; int rfifo; int wfifo; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;


 int CYAPA_FNGR_LEFT ;
 int CYAPA_FNGR_MIDDLE ;
 int CYAPA_FNGR_RIGHT ;
 int cyapa_lock (struct cyapa_softc*) ;
 int cyapa_notify (struct cyapa_softc*) ;
 int cyapa_unlock (struct cyapa_softc*) ;
 void* fifo_read_char (struct cyapa_softc*,int *) ;
 scalar_t__ fifo_ready (struct cyapa_softc*,int *) ;
 int fifo_reset (struct cyapa_softc*,int *) ;
 size_t fifo_space (struct cyapa_softc*,int *) ;
 char* fifo_write (struct cyapa_softc*,int *,size_t) ;
 int fifo_write_char (struct cyapa_softc*,int *,int) ;
 int printf (char*,int) ;
 int uiomove (char*,size_t,struct uio*) ;

__attribute__((used)) static int
cyapawrite(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct cyapa_softc *sc;
 int error;
 int cmd_completed;
 size_t n;
 uint8_t c0;
 char* ptr;

 sc = dev->si_drv1;
again:




 cyapa_lock(sc);
 while ((n = fifo_space(sc, &sc->wfifo)) > 0 && uio->uio_resid) {
  if (n > uio->uio_resid)
   n = uio->uio_resid;
  ptr = fifo_write(sc, &sc->wfifo, 0);
  cyapa_unlock(sc);
  error = uiomove(ptr, n, uio);
  cyapa_lock(sc);
  if (error)
   break;
  fifo_write(sc, &sc->wfifo, n);
 }


 cmd_completed = (fifo_ready(sc, &sc->wfifo) != 0);
 while (fifo_ready(sc, &sc->wfifo) && cmd_completed && error == 0) {
  if (sc->ps2_cmd == 0)
   sc->ps2_cmd = fifo_read_char(sc, &sc->wfifo);
  switch(sc->ps2_cmd) {
  case 0xE6:

   sc->scaling_mode = 0;
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   break;
  case 0xE7:

   sc->scaling_mode = 1;
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   break;
  case 0xE8:

   if (sc->ps2_acked == 0) {
    sc->ps2_acked = 1;
    fifo_write_char(sc, &sc->rfifo, 0xFA);
   }
   if (fifo_ready(sc, &sc->wfifo) == 0) {
    cmd_completed = 0;
    break;
   }
   sc->mode.resolution = fifo_read_char(sc, &sc->wfifo);
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   break;
  case 0xE9:
   c0 = 0;
   if (sc->remote_mode)
    c0 |= 0x40;
   if (sc->reporting_mode)
    c0 |= 0x20;
   if (sc->scaling_mode)
    c0 |= 0x10;
   if (sc->track_but & CYAPA_FNGR_LEFT)
    c0 |= 0x04;
   if (sc->track_but & CYAPA_FNGR_MIDDLE)
    c0 |= 0x02;
   if (sc->track_but & CYAPA_FNGR_RIGHT)
    c0 |= 0x01;
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   fifo_write_char(sc, &sc->rfifo, c0);
   fifo_write_char(sc, &sc->rfifo, 0x00);
   fifo_write_char(sc, &sc->rfifo, 100);
   break;
  case 0xEA:

   sc->remote_mode = 0;
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->delta_x = 0;
   sc->delta_y = 0;
   sc->delta_z = 0;
   break;
  case 0xEB:




   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->data_signal = 1;
   break;
  case 0xEC:

   fifo_write_char(sc, &sc->rfifo, 0xFA);
   break;
  case 0xEE:

   fifo_write_char(sc, &sc->rfifo, 0xFA);
   break;
  case 0xF0:

   sc->remote_mode = 1;
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->delta_x = 0;
   sc->delta_y = 0;
   sc->delta_z = 0;
   break;
  case 0xF2:
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   switch(sc->zenabled) {
   case 1:
    fifo_write_char(sc, &sc->rfifo, 0x03);
    break;
   case 2:
    fifo_write_char(sc, &sc->rfifo, 0x04);
    break;
   default:
    fifo_write_char(sc, &sc->rfifo, 0x00);
    break;
   }
   sc->delta_x = 0;
   sc->delta_y = 0;
   sc->delta_z = 0;
   break;
  case 0xF3:





   if (sc->ps2_acked == 0) {
    sc->ps2_acked = 1;
    fifo_write_char(sc, &sc->rfifo, 0xFA);
   }
   if (fifo_ready(sc, &sc->wfifo) == 0) {
    cmd_completed = 0;
    break;
   }
   sc->mode.rate = fifo_read_char(sc, &sc->wfifo);
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   if (sc->zenabled == 0 && sc->mode.rate == 200)
    sc->zenabled = -1;
   else if (sc->zenabled == -1 && sc->mode.rate == 100)
    sc->zenabled = -2;
   else if (sc->zenabled == -1 && sc->mode.rate == 200)
    sc->zenabled = -3;
   else if (sc->zenabled == -2 && sc->mode.rate == 80)
    sc->zenabled = 1;
   else if (sc->zenabled == -3 && sc->mode.rate == 80)
    sc->zenabled = 2;
   if (sc->mode.level)
    sc->zenabled = 1;
   break;
  case 0xF4:

   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->reporting_mode = 1;
   break;
  case 0xF5:




   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->reporting_mode = 1;
   break;
  case 0xF6:






   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->mode.rate = 100;
   sc->mode.resolution = 4;
   sc->scaling_mode = 0;
   sc->reporting_mode = 1;
   sc->remote_mode = 0;
   sc->delta_x = 0;
   sc->delta_y = 0;
   sc->delta_z = 0;

   break;
  case 0xFE:






   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->data_signal = 1;
   break;
  case 0xFF:



   fifo_reset(sc, &sc->rfifo);
   fifo_reset(sc, &sc->wfifo);
   fifo_write_char(sc, &sc->rfifo, 0xFA);
   sc->delta_x = 0;
   sc->delta_y = 0;
   sc->delta_z = 0;
   sc->zenabled = 0;
   sc->mode.level = 0;
   break;
  default:
   printf("unknown command %02x\n", sc->ps2_cmd);
   break;
  }
  if (cmd_completed) {
   sc->ps2_cmd = 0;
   sc->ps2_acked = 0;
  }
  cyapa_notify(sc);
 }
 cyapa_unlock(sc);
 if (error == 0 && (cmd_completed || uio->uio_resid))
  goto again;
 return (error);
}

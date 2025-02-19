
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uio {int uio_resid; } ;
struct cmx_softc {int dev; void** buf; int sel; int ch; scalar_t__ polling; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;


 int BSR_BULK_IN_FULL ;
 int CMX_LOCK (struct cmx_softc*) ;
 int CMX_MIN_RDLEN ;
 int CMX_UNLOCK (struct cmx_softc*) ;
 int DEBUG_printf (int ,char*,...) ;
 int EAGAIN ;
 int EINVAL ;
 int ENXIO ;
 int MIN (unsigned long,int) ;
 int MODEBITS ;
 int O_NONBLOCK ;
 int PZERO ;
 int SCR_READER_TO_HOST_DONE ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 void* cmx_read_DTR (struct cmx_softc*) ;
 int cmx_sync_write_SCR (struct cmx_softc*,int ) ;
 scalar_t__ cmx_test_BSR (struct cmx_softc*,int ,int ) ;
 int cmx_wait_BSR (struct cmx_softc*,int ,int) ;
 int selwakeuppri (int *,int ) ;
 int uiomove (void**,int,struct uio*) ;

__attribute__((used)) static int
cmx_read(struct cdev *cdev, struct uio *uio, int flag)
{
 struct cmx_softc *sc = cdev->si_drv1;
 unsigned long bytes_left;
 uint8_t uc;
 int rv, amnt, offset;

 if (sc == ((void*)0) || sc->dying)
  return ENXIO;

 DEBUG_printf(sc->dev, "called (len=%d flag=%b)\n",
  uio->uio_resid, flag, MODEBITS);

 CMX_LOCK(sc);
 if (sc->polling) {
  DEBUG_printf(sc->dev, "disabling polling\n");
  callout_stop(&sc->ch);
  sc->polling = 0;
  CMX_UNLOCK(sc);
  callout_drain(&sc->ch);
  selwakeuppri(&sc->sel, PZERO);
 } else {
  CMX_UNLOCK(sc);
 }

 if (uio->uio_resid == 0) {
  return 0;
 }

 if (uio->uio_resid < CMX_MIN_RDLEN) {
  return EINVAL;
 }

 if (flag & O_NONBLOCK) {
  if (cmx_test_BSR(sc, BSR_BULK_IN_FULL, 0)) {
   return EAGAIN;
  }
 }

 for (int i = 0; i < 5; i++) {
  if ((rv = cmx_wait_BSR(sc, BSR_BULK_IN_FULL, 1)) != 0) {
   return rv;
  }
  sc->buf[i] = cmx_read_DTR(sc);
  DEBUG_printf(sc->dev, "buf[%02x]=%02x\n", i, sc->buf[i]);
 }

 bytes_left = CMX_MIN_RDLEN +
                 (0x000000FF&((char)sc->buf[1])) +
                 (0x0000FF00&((char)sc->buf[2] << 8)) +
                 (0x00FF0000&((char)sc->buf[3] << 16)) +
                 (0xFF000000&((char)sc->buf[4] << 24));
 DEBUG_printf(sc->dev, "msgsz=%lu\n", bytes_left);

 if (uio->uio_resid < bytes_left) {
  return EINVAL;
 }

 offset = 5;
 while (bytes_left > 0) {
  amnt = MIN(bytes_left, sizeof(sc->buf));

  for (int i = offset; i < amnt; i++) {
   if ((rv = cmx_wait_BSR(sc, BSR_BULK_IN_FULL, 1))!=0) {
    return rv;
   }
   sc->buf[i] = cmx_read_DTR(sc);
   DEBUG_printf(sc->dev, "buf[%02x]=%02x\n",
     i, sc->buf[i]);
  }

  if ((rv = uiomove(sc->buf, amnt, uio)) != 0) {
   DEBUG_printf(sc->dev, "uiomove failed (%d)\n", rv);
   return rv;
  }

  if (offset)
   offset = 0;
  bytes_left -= amnt;
 }

 if ((rv = cmx_wait_BSR(sc, BSR_BULK_IN_FULL, 1)) != 0) {
  return rv;
 }

 if ((rv = cmx_sync_write_SCR(sc, SCR_READER_TO_HOST_DONE)) != 0) {
  return rv;
 }

 uc = cmx_read_DTR(sc);
 DEBUG_printf(sc->dev, "success (DTR=%02x)\n", uc);
 return 0;
}

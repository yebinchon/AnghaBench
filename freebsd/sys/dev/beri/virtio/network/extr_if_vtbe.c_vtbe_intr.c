
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtbe_softc {int vs_curq; int pio_recv; } ;


 int PIO_READ (int ) ;
 int PIO_SET (int ,int ,int ) ;
 int Q_NOTIFY ;
 int Q_NOTIFY1 ;
 int Q_PFN ;
 int Q_SEL ;
 int READ4 (struct vtbe_softc*,int ) ;
 int VIRTIO_MMIO_QUEUE_SEL ;
 int VTBE_LOCK (struct vtbe_softc*) ;
 int VTBE_UNLOCK (struct vtbe_softc*) ;
 int be32toh (int ) ;
 int htobe32 (int ) ;
 int vq_init (struct vtbe_softc*) ;
 int vtbe_rxfinish_locked (struct vtbe_softc*) ;
 int vtbe_txfinish_locked (struct vtbe_softc*) ;

__attribute__((used)) static void
vtbe_intr(void *arg)
{
 struct vtbe_softc *sc;
 int pending;
 uint32_t reg;

 sc = arg;

 VTBE_LOCK(sc);

 reg = PIO_READ(sc->pio_recv);


 PIO_SET(sc->pio_recv, reg, 0);

 pending = htobe32(reg);
 if (pending & Q_SEL) {
  reg = READ4(sc, VIRTIO_MMIO_QUEUE_SEL);
  sc->vs_curq = be32toh(reg);
 }

 if (pending & Q_PFN) {
  vq_init(sc);
 }

 if (pending & Q_NOTIFY) {

  vtbe_txfinish_locked(sc);
 }

 if (pending & Q_NOTIFY1) {
  vtbe_rxfinish_locked(sc);
 }

 VTBE_UNLOCK(sc);
}

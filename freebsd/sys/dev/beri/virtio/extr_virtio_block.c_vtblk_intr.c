
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beri_vtblk_softc {int pio_recv; } ;


 int PIO_READ (int ) ;
 int PIO_SET (int ,int,int ) ;
 int Q_NOTIFY ;
 int Q_PFN ;
 int htobe32 (int) ;
 int vq_init (struct beri_vtblk_softc*) ;
 int wakeup (struct beri_vtblk_softc*) ;

__attribute__((used)) static void
vtblk_intr(void *arg)
{
 struct beri_vtblk_softc *sc;
 int pending;
 int reg;

 sc = arg;

 reg = PIO_READ(sc->pio_recv);


 PIO_SET(sc->pio_recv, reg, 0);

 pending = htobe32(reg);

 if (pending & Q_PFN) {
  vq_init(sc);
 }

 if (pending & Q_NOTIFY) {
  wakeup(sc);
 }
}

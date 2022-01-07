
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct md_ioctl {int dummy; } ;
struct cdev {struct beri_vtblk_softc* si_drv1; } ;
struct beri_vtblk_softc {int opened; int pio_recv; int * vnode; struct md_ioctl* mdio; } ;
typedef scalar_t__ caddr_t ;


 int DPRINTF (char*,int) ;


 int PIO_SETUP_IRQ (int ,int ,struct beri_vtblk_softc*) ;
 int PIO_TEARDOWN_IRQ (int ) ;
 int backend_info (struct beri_vtblk_softc*) ;
 int close_file (struct beri_vtblk_softc*,struct thread*) ;
 int open_file (struct beri_vtblk_softc*,struct thread*) ;
 int vtblk_intr ;

__attribute__((used)) static int
beri_ioctl(struct cdev *dev, u_long cmd, caddr_t addr,
  int flags, struct thread *td)
{
 struct beri_vtblk_softc *sc;
 int err;

 sc = dev->si_drv1;

 switch (cmd) {
 case 129:

  if (sc->vnode != ((void*)0)) {

   return (1);
  }
  sc->mdio = (struct md_ioctl *)addr;
  backend_info(sc);
  DPRINTF("opening file, td 0x%08x\n", (int)td);
  err = open_file(sc, td);
  if (err)
   return (err);
  PIO_SETUP_IRQ(sc->pio_recv, vtblk_intr, sc);
  sc->opened = 1;
  break;
 case 128:
  if (sc->vnode == ((void*)0)) {

   return (1);
  }
  sc->opened = 0;
  DPRINTF("closing file, td 0x%08x\n", (int)td);
  err = close_file(sc, td);
  if (err)
   return (err);
  PIO_TEARDOWN_IRQ(sc->pio_recv);
  break;
 default:
  break;
 }

 return (0);
}

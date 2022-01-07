
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_long ;
typedef int u_char ;
struct thread {int dummy; } ;
struct cfiocqry {int offset; int count; int buffer; } ;
struct cfi_softc {int sc_size; int sc_width; int sc_writing; } ;
struct cdev {struct cfi_softc* si_drv1; } ;
typedef scalar_t__ caddr_t ;
 int ENOIOCTL ;
 int ENOSPC ;
 int ESPIPE ;
 int cfi_block_finish (struct cfi_softc*) ;
 int cfi_intel_get_factory_pr (struct cfi_softc*,int *) ;
 int cfi_intel_get_oem_pr (struct cfi_softc*,int *) ;
 int cfi_intel_get_plr (struct cfi_softc*,int *) ;
 int cfi_intel_set_oem_pr (struct cfi_softc*,int ) ;
 int cfi_intel_set_plr (struct cfi_softc*) ;
 int cfi_read_qry (struct cfi_softc*,int ) ;
 int copyout (int *,int ,int) ;

__attribute__((used)) static int
cfi_devioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct cfi_softc *sc;
 struct cfiocqry *rq;
 int error;
 u_char val;

 sc = dev->si_drv1;
 error = 0;

 switch (cmd) {
 case 130:
  if (sc->sc_writing) {
   error = cfi_block_finish(sc);
   if (error)
    break;
  }
  rq = (struct cfiocqry *)data;
  if (rq->offset >= sc->sc_size / sc->sc_width)
   return (ESPIPE);
  if (rq->offset + rq->count > sc->sc_size / sc->sc_width)
   return (ENOSPC);

  while (!error && rq->count--) {
   val = cfi_read_qry(sc, rq->offset++);
   error = copyout(&val, rq->buffer++, 1);
  }
  break;
 default:
  error = ENOIOCTL;
  break;
 }
 return (error);
}

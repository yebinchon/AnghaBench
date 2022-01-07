
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct pccard_softc {TYPE_1__* cis; } ;
struct cdev {struct pccard_softc* si_drv1; } ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ buffer; } ;


 int MIN (int ,scalar_t__) ;
 int uiomove (scalar_t__,int ,struct uio*) ;

__attribute__((used)) static int
pccard_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct pccard_softc *sc;

 sc = dev->si_drv1;

 if (sc->cis == ((void*)0) || uio->uio_offset > sc->cis->len)
  return (0);
 return (uiomove(sc->cis->buffer + uio->uio_offset,
   MIN(uio->uio_resid, sc->cis->len - uio->uio_offset), uio));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pccard_softc {scalar_t__ cis_open; int * cis; } ;
struct cdev {struct pccard_softc* si_drv1; } ;


 int M_TEMP ;
 int free (int *,int ) ;

__attribute__((used)) static int
pccard_close(struct cdev *dev, int fflags, int devtype, struct thread *td)
{
 struct pccard_softc *sc;

 sc = dev->si_drv1;
 free(sc->cis, M_TEMP);
 sc->cis = ((void*)0);
 sc->cis_open = 0;
 return (0);
}

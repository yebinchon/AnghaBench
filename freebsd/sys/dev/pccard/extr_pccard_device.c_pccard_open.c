
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pccard_softc {scalar_t__ cis_open; int * cis; int dev; } ;
struct cdev {struct pccard_softc* si_drv1; } ;
typedef int device_t ;


 int EBUSY ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int device_get_children (int ,int **,int*) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;
 int pccard_build_cis ;
 int pccard_scan_cis (int ,int ,int ,int *) ;

__attribute__((used)) static int
pccard_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 device_t parent, child;
 device_t *kids;
 int cnt, err;
 struct pccard_softc *sc;

 sc = dev->si_drv1;
 if (sc->cis_open)
  return (EBUSY);
 parent = sc->dev;
 err = device_get_children(parent, &kids, &cnt);
 if (err)
  return err;
 if (cnt == 0) {
  free(kids, M_TEMP);
  sc->cis_open++;
  sc->cis = ((void*)0);
  return (0);
 }
 child = kids[0];
 free(kids, M_TEMP);
 sc->cis = malloc(sizeof(*sc->cis), M_TEMP, M_ZERO | M_WAITOK);
 err = pccard_scan_cis(parent, child, pccard_build_cis, sc->cis);
 if (err) {
  free(sc->cis, M_TEMP);
  sc->cis = ((void*)0);
  return (err);
 }
 sc->cis_open++;
 return (0);
}

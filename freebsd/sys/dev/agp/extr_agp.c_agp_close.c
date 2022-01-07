
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
struct agp_softc {scalar_t__ as_state; scalar_t__ as_isopen; int as_memory; } ;
struct agp_memory {scalar_t__ am_is_bound; } ;
typedef int device_t ;


 scalar_t__ AGP_ACQUIRE_USER ;
 int AGP_FREE_MEMORY (int ,struct agp_memory*) ;
 int AGP_UNBIND_MEMORY (int ,struct agp_memory*) ;
 struct agp_memory* TAILQ_FIRST (int *) ;
 int agp_release_helper (int ,scalar_t__) ;
 struct agp_softc* device_get_softc (int ) ;
 int device_unbusy (int ) ;

__attribute__((used)) static int
agp_close(struct cdev *kdev, int fflag, int devtype, struct thread *td)
{
 device_t dev = kdev->si_drv1;
 struct agp_softc *sc = device_get_softc(dev);
 struct agp_memory *mem;




 while ((mem = TAILQ_FIRST(&sc->as_memory)) != ((void*)0)) {
  if (mem->am_is_bound)
   AGP_UNBIND_MEMORY(dev, mem);
  AGP_FREE_MEMORY(dev, mem);
 }
 if (sc->as_state == AGP_ACQUIRE_USER)
  agp_release_helper(dev, AGP_ACQUIRE_USER);
 sc->as_isopen = 0;
 device_unbusy(dev);

 return 0;
}

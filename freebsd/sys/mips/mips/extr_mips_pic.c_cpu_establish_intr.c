
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mips_pic_softc {int pic_dev; } ;
struct mips_pic_intr {int intr_irq; struct resource* res; } ;
typedef int driver_filter_t ;


 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource (int ,int ,int*,int,int,int,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_setup_intr (int ,struct resource*,int,int *,void (*) (void*),void*,void**) ;
 int mips_pic_map_fixed_intr (int,struct mips_pic_intr**) ;
 int mips_pic_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int,int) ;

__attribute__((used)) static void
cpu_establish_intr(struct mips_pic_softc *sc, const char *name,
    driver_filter_t *filt, void (*handler)(void*), void *arg, int irq,
    int flags, void **cookiep)
{
 struct mips_pic_intr *intr;
 struct resource *res;
 int rid;
 int error;

 rid = -1;


 if ((error = mips_pic_map_fixed_intr(irq, &intr)))
  panic("Unable to map IRQ %d: %d", irq, error);


 mtx_lock(&mips_pic_mtx);
 res = intr->res;
 mtx_unlock(&mips_pic_mtx);


 if (res == ((void*)0)) {

  rid = intr->intr_irq;
  res = bus_alloc_resource(sc->pic_dev, SYS_RES_IRQ, &rid,
      intr->intr_irq, intr->intr_irq, 1, RF_SHAREABLE|RF_ACTIVE);

  if (res != ((void*)0)) {

   mtx_lock(&mips_pic_mtx);
   if (intr->res == ((void*)0)) {
    intr->res = res;
   }
   mtx_unlock(&mips_pic_mtx);



   if (intr->res != res) {
    bus_release_resource(sc->pic_dev, SYS_RES_IRQ,
        rid, res);
   }
  } else {

   mtx_lock(&mips_pic_mtx);
   res = intr->res;
   mtx_unlock(&mips_pic_mtx);
  }

  if (res == ((void*)0)) {
   panic("Unable to allocate IRQ %d->%u resource", irq,
       intr->intr_irq);
  }
 }

 error = bus_setup_intr(sc->pic_dev, res, flags, filt, handler, arg,
     cookiep);
 if (error)
  panic("Unable to add IRQ %d handler: %d", irq, error);
}

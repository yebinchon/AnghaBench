
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
struct intr_pic {int dummy; } ;
struct bcm_mips_softc {size_t num_cpuirqs; size_t timer_irq; TYPE_1__* cpuirqs; TYPE_1__* isrcs; int dev; } ;
typedef size_t rman_res_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_5__ {int irq_rid; int isrc; } ;


 size_t BCM_MIPS_IRQ_SHARED ;
 int BCM_MIPS_LOCK_DESTROY (struct bcm_mips_softc*) ;
 int BCM_MIPS_LOCK_INIT (struct bcm_mips_softc*) ;
 int ENOMEM ;
 int ENXIO ;
 size_t INT_MAX ;
 int bcm_mips_fini_cpuirq (struct bcm_mips_softc*,TYPE_1__*) ;
 int bcm_mips_init_cpuirq (struct bcm_mips_softc*,TYPE_1__*,size_t,size_t,int ) ;
 int bcm_mips_init_cpuirq_unavail (struct bcm_mips_softc*,TYPE_1__*) ;
 uintptr_t bcm_mips_pic_xref (struct bcm_mips_softc*) ;
 int bcm_mips_register_isrcs (struct bcm_mips_softc*) ;
 size_t bhnd_get_intr_count (int ) ;
 struct bcm_mips_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int intr_isrc_deregister (int *) ;
 int intr_pic_deregister (int ,int ) ;
 struct intr_pic* intr_pic_register (int ,uintptr_t) ;
 size_t nitems (TYPE_1__*) ;
 int panic (char*,size_t) ;

int
bcm_mips_attach(device_t dev, u_int num_cpuirqs, u_int timer_irq,
    driver_filter_t filter)
{
 struct bcm_mips_softc *sc;
 struct intr_pic *pic;
 uintptr_t xref;
 u_int irq_rid;
 rman_res_t irq;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->num_cpuirqs = num_cpuirqs;
 sc->timer_irq = timer_irq;


 if (sc->num_cpuirqs > nitems(sc->cpuirqs)) {
  device_printf(dev, "%u nirqs exceeds maximum supported %zu",
      sc->num_cpuirqs, nitems(sc->cpuirqs));
  return (ENXIO);
 }

 pic = ((void*)0);
 xref = bcm_mips_pic_xref(sc);

 BCM_MIPS_LOCK_INIT(sc);


 if ((error = bcm_mips_register_isrcs(sc))) {
  BCM_MIPS_LOCK_DESTROY(sc);
  return (error);
 }


 irq_rid = bhnd_get_intr_count(dev);
 irq = 0;
 for (u_int i = 0; i < sc->num_cpuirqs; i++) {

  if (irq_rid >= INT_MAX) {
   device_printf(dev, "exhausted IRQ resource IDs\n");
   error = ENOMEM;
   goto failed;
  }

  if (irq == sc->timer_irq) {

   error = bcm_mips_init_cpuirq_unavail(sc,
       &sc->cpuirqs[i]);
  } else {

   error = bcm_mips_init_cpuirq(sc, &sc->cpuirqs[i],
       irq_rid, irq, filter);
  }

  if (error)
   goto failed;


  irq_rid++;
  irq++;
 }


 if (sc->num_cpuirqs <= BCM_MIPS_IRQ_SHARED)
  panic("missing shared interrupt %d\n", BCM_MIPS_IRQ_SHARED);

 if (sc->cpuirqs[BCM_MIPS_IRQ_SHARED].irq_rid == -1)
  panic("shared interrupt %d unavailable", BCM_MIPS_IRQ_SHARED);


 if ((pic = intr_pic_register(dev, xref)) == ((void*)0)) {
  device_printf(dev, "error registering PIC\n");
  error = ENXIO;
  goto failed;
 }

 return (0);

failed:

 if (pic != ((void*)0))
  intr_pic_deregister(dev, 0);


 for (size_t i = 0; i < nitems(sc->isrcs); i++)
  intr_isrc_deregister(&sc->isrcs[i].isrc);


 for (u_int i = 0; i < sc->num_cpuirqs; i++)
  bcm_mips_fini_cpuirq(sc, &sc->cpuirqs[i]);

 BCM_MIPS_LOCK_DESTROY(sc);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct bcm_mips_softc {size_t num_cpuirqs; int * cpuirqs; TYPE_1__* isrcs; } ;
typedef int device_t ;
struct TYPE_2__ {int isrc; } ;


 int bcm_mips_fini_cpuirq (struct bcm_mips_softc*,int *) ;
 struct bcm_mips_softc* device_get_softc (int ) ;
 int intr_isrc_deregister (int *) ;
 int intr_pic_deregister (int ,int ) ;
 size_t nitems (TYPE_1__*) ;

int
bcm_mips_detach(device_t dev)
{
 struct bcm_mips_softc *sc;

 sc = device_get_softc(dev);


 intr_pic_deregister(dev, 0);


 for (size_t i = 0; i < nitems(sc->isrcs); i++)
  intr_isrc_deregister(&sc->isrcs[i].isrc);


 for (u_int i = 0; i < sc->num_cpuirqs; i++)
  bcm_mips_fini_cpuirq(sc, &sc->cpuirqs[i]);

 return (0);
}

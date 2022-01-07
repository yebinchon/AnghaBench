
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmd_softc {TYPE_1__* vmd_irq; } ;
struct vmd_irq_handler {void* vmd_arg; int vmd_rid; int * vmd_intr; int vmd_child; } ;
struct resource {int dummy; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;
typedef int device_t ;
struct TYPE_2__ {int vmd_list; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct vmd_irq_handler*,int ) ;
 int bus_generic_setup_intr (int ,int ,struct resource*,int,int *,int *,void*,void**) ;
 struct vmd_softc* device_get_softc (int ) ;
 struct vmd_irq_handler* malloc (int,int ,int) ;
 int rman_get_rid (struct resource*) ;
 int vmd_link ;

__attribute__((used)) static int
vmd_setup_intr(device_t dev, device_t child, struct resource *irq,
    int flags, driver_filter_t *filter, driver_intr_t *intr, void *arg,
    void **cookiep)
{
 struct vmd_irq_handler *elm;
 struct vmd_softc *sc;
 int i;

 sc = device_get_softc(dev);






 i = 0;
 elm = malloc(sizeof(*elm), M_DEVBUF, M_NOWAIT|M_ZERO);
 elm->vmd_child = child;
 elm->vmd_intr = intr;
 elm->vmd_rid = rman_get_rid(irq);
 elm->vmd_arg = arg;
 TAILQ_INSERT_TAIL(&sc->vmd_irq[i].vmd_list, elm, vmd_link);

 return (bus_generic_setup_intr(dev, child, irq, flags, filter, intr,
     arg, cookiep));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target; int irq_base; } ;
struct fsl_msi_softc {scalar_t__ sc_base; TYPE_1__ sc_map; struct fsl_msi_irq* sc_msi_irq; } ;
struct fsl_msi_irq {int irq; scalar_t__ reg; int cookie; int res; } ;
typedef int device_t ;


 scalar_t__ FSL_MSI_TARGET ;
 int FSL_NUM_IRQS ;
 int FSL_NUM_MSIS ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int M_BESTFIT ;
 int M_WAITOK ;
 int RF_ACTIVE ;
 int SLIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 void* bus_get_resource_start (int ,int ,int) ;
 int bus_setup_intr (int ,int ,int,int ,int *,struct fsl_msi_irq*,int *) ;
 struct fsl_msi_softc* device_get_softc (int ) ;
 int fsl_msi_intr_filter ;
 int fsl_msis ;
 int * msi_vmem ;
 int ofw_bus_get_node (int ) ;
 int powerpc_register_pic (int ,int ,int ,int ,int ) ;
 int slist ;
 int vmem_add (int *,int ,int ,int) ;
 int * vmem_create (char*,int ,int ,int,int,int) ;

__attribute__((used)) static int
fsl_msi_attach(device_t dev)
{
 struct fsl_msi_softc *sc;
 struct fsl_msi_irq *irq;
 int i;

 sc = device_get_softc(dev);

 if (msi_vmem == ((void*)0))
  msi_vmem = vmem_create("MPIC MSI", 0, 0, 1, 1, M_BESTFIT | M_WAITOK);


 sc->sc_base = bus_get_resource_start(dev, SYS_RES_MEMORY, 0);
 sc->sc_map.target = bus_get_resource_start(dev, SYS_RES_MEMORY, 1);

 if (sc->sc_map.target == 0)
  sc->sc_map.target = sc->sc_base + FSL_MSI_TARGET;

 for (i = 0; i < FSL_NUM_IRQS; i++) {
  irq = &sc->sc_msi_irq[i];
  irq->irq = i;
  irq->reg = sc->sc_base + 16 * i;
  irq->res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &irq->irq, RF_ACTIVE);
  bus_setup_intr(dev, irq->res, INTR_TYPE_MISC | INTR_MPSAFE,
      fsl_msi_intr_filter, ((void*)0), irq, &irq->cookie);
 }
 sc->sc_map.irq_base = powerpc_register_pic(dev, ofw_bus_get_node(dev),
     FSL_NUM_MSIS, 0, 0);


 vmem_add(msi_vmem, sc->sc_map.irq_base, FSL_NUM_MSIS, M_WAITOK);

 SLIST_INSERT_HEAD(&fsl_msis, &sc->sc_map, slist);

 return (0);
}

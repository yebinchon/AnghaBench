
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpic_cpcht_softc {int sc_ht_mtx; } ;
typedef int phandle_t ;
typedef scalar_t__ device_t ;


 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TRIGGER_LEVEL ;
 int MTX_SPIN ;
 int cpcht_msipic ;
 struct openpic_cpcht_softc* device_get_softc (scalar_t__) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (scalar_t__) ;
 int openpic_common_attach (scalar_t__,int ) ;
 int openpic_config (scalar_t__,int,int ,int ) ;
 scalar_t__ root_pic ;

__attribute__((used)) static int
openpic_cpcht_attach(device_t dev)
{
 struct openpic_cpcht_softc *sc;
 phandle_t node;
 int err, irq;

 node = ofw_bus_get_node(dev);
 err = openpic_common_attach(dev, node);
 if (err != 0)
  return (err);





 sc = device_get_softc(dev);
 mtx_init(&sc->sc_ht_mtx, "htpic", ((void*)0), MTX_SPIN);
 for (irq = 0; irq < 4; irq++)
  openpic_config(dev, irq, INTR_TRIGGER_LEVEL, INTR_POLARITY_LOW);
 for (irq = 4; irq < 124; irq++)
  openpic_config(dev, irq, INTR_TRIGGER_EDGE, INTR_POLARITY_LOW);






 if (dev == root_pic)
  cpcht_msipic = node;

 return (0);
}

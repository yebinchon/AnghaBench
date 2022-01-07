
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octebus_softc {int sc_dev; int * sc_spi_irq; } ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int port; int poll; int dev; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int ENXIO ;
 int INTERFACE (int) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int OCTEON_IRQ_RML ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,int*,int ,int ,int,int ) ;
 int bus_setup_intr (int ,int *,int,int ,int *,scalar_t__*,int *) ;
 scalar_t__ cvm_oct_common_init (struct ifnet*) ;
 int cvm_oct_spi_enable_error_reporting (int ) ;
 int cvm_oct_spi_poll ;
 int cvm_oct_spi_rml_interrupt ;
 int device_get_parent (int ) ;
 struct octebus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ number_spi_ports ;

int cvm_oct_spi_init(struct ifnet *ifp)
{
 struct octebus_softc *sc;
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 int error;
 int rid;

 if (number_spi_ports == 0) {
  sc = device_get_softc(device_get_parent(priv->dev));

  rid = 0;
  sc->sc_spi_irq = bus_alloc_resource(sc->sc_dev, SYS_RES_IRQ,
          &rid, OCTEON_IRQ_RML,
          OCTEON_IRQ_RML, 1,
          RF_ACTIVE);
  if (sc->sc_spi_irq == ((void*)0)) {
   device_printf(sc->sc_dev, "could not allocate SPI irq");
   return ENXIO;
  }

  error = bus_setup_intr(sc->sc_dev, sc->sc_spi_irq,
           INTR_TYPE_NET | INTR_MPSAFE,
           cvm_oct_spi_rml_interrupt, ((void*)0),
           &number_spi_ports, ((void*)0));
  if (error != 0) {
   device_printf(sc->sc_dev, "could not setup SPI irq");
   return error;
  }
 }
 number_spi_ports++;

 if ((priv->port == 0) || (priv->port == 16)) {
  cvm_oct_spi_enable_error_reporting(INTERFACE(priv->port));
  priv->poll = cvm_oct_spi_poll;
 }
 if (cvm_oct_common_init(ifp) != 0)
     return ENXIO;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {int msk_pflags; int msk_mtx; int * msk_res; int msk_res_spec; int * msk_irq; int msk_irq_spec; int * msk_intrhand; int ** msk_devs; } ;
typedef int device_t ;


 int B0_CTST ;
 int B0_HWE_IMSK ;
 int B0_IMSK ;
 int CSR_READ_4 (struct msk_softc*,int ) ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int ) ;
 int CS_RST_SET ;
 int KASSERT (int ,char*) ;
 int MSK_FLAG_MSI ;
 size_t MSK_PORT_A ;
 size_t MSK_PORT_B ;
 int M_DEVBUF ;
 int Y2_LED_STAT_OFF ;
 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int device_delete_child (int ,int *) ;
 int device_get_ivars (int *) ;
 struct msk_softc* device_get_softc (int ) ;
 scalar_t__ device_is_alive (int ) ;
 int free (int ,int ) ;
 int msk_status_dma_free (struct msk_softc*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
mskc_detach(device_t dev)
{
 struct msk_softc *sc;

 sc = device_get_softc(dev);
 KASSERT(mtx_initialized(&sc->msk_mtx), ("msk mutex not initialized"));

 if (device_is_alive(dev)) {
  if (sc->msk_devs[MSK_PORT_A] != ((void*)0)) {
   free(device_get_ivars(sc->msk_devs[MSK_PORT_A]),
       M_DEVBUF);
   device_delete_child(dev, sc->msk_devs[MSK_PORT_A]);
  }
  if (sc->msk_devs[MSK_PORT_B] != ((void*)0)) {
   free(device_get_ivars(sc->msk_devs[MSK_PORT_B]),
       M_DEVBUF);
   device_delete_child(dev, sc->msk_devs[MSK_PORT_B]);
  }
  bus_generic_detach(dev);
 }


 CSR_WRITE_4(sc, B0_IMSK, 0);
 CSR_READ_4(sc, B0_IMSK);
 CSR_WRITE_4(sc, B0_HWE_IMSK, 0);
 CSR_READ_4(sc, B0_HWE_IMSK);


 CSR_WRITE_2(sc, B0_CTST, Y2_LED_STAT_OFF);


 CSR_WRITE_2(sc, B0_CTST, CS_RST_SET);

 msk_status_dma_free(sc);

 if (sc->msk_intrhand) {
  bus_teardown_intr(dev, sc->msk_irq[0], sc->msk_intrhand);
  sc->msk_intrhand = ((void*)0);
 }
 bus_release_resources(dev, sc->msk_irq_spec, sc->msk_irq);
 if ((sc->msk_pflags & MSK_FLAG_MSI) != 0)
  pci_release_msi(dev);
 bus_release_resources(dev, sc->msk_res_spec, sc->msk_res);
 mtx_destroy(&sc->msk_mtx);

 return (0);
}

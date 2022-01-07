
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_softc {int sc_dev; } ;


 int HIFN_RETRY_TIMEOUT ;
 int HIFN_TRDY_TIMEOUT ;
 int pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static void
hifn_set_retry(struct hifn_softc *sc)
{

 pci_write_config(sc->sc_dev, HIFN_RETRY_TIMEOUT, 0, 1);
 pci_write_config(sc->sc_dev, HIFN_TRDY_TIMEOUT, 0, 1);
}

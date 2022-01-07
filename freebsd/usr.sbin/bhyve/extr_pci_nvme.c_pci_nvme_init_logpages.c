
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_nvme_softc {int fw_log; int health_log; int err_log; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
pci_nvme_init_logpages(struct pci_nvme_softc *sc)
{

 memset(&sc->err_log, 0, sizeof(sc->err_log));
 memset(&sc->health_log, 0, sizeof(sc->health_log));
 memset(&sc->fw_log, 0, sizeof(sc->fw_log));
}

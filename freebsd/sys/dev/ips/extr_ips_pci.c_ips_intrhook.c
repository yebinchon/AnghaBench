
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_softc {int configured; int ips_ich; } ;


 int config_intrhook_disestablish (int *) ;
 scalar_t__ ips_adapter_init (struct ips_softc*) ;
 int ips_pci_free (struct ips_softc*) ;

__attribute__((used)) static void
ips_intrhook(void *arg)
{
 struct ips_softc *sc = (struct ips_softc *)arg;

 config_intrhook_disestablish(&sc->ips_ich);
 if (ips_adapter_init(sc))
  ips_pci_free(sc);
 else
  sc->configured = 1;
}

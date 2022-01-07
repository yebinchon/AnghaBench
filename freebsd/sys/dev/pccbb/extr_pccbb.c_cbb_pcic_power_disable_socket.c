
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int * exca; } ;
typedef int device_t ;


 int CARD_OFF ;
 int DPRINTF (char*) ;
 int EXCA_INTR ;
 int EXCA_INTR_ENABLE ;
 int EXCA_PWRCTL ;
 int cbb_power (int ,int ) ;
 struct cbb_softc* device_get_softc (int ) ;
 int exca_putb (int *,int ,int ) ;
 int hz ;
 int pause (char*,int) ;

__attribute__((used)) static int
cbb_pcic_power_disable_socket(device_t brdev, device_t child)
{
 struct cbb_softc *sc = device_get_softc(brdev);

 DPRINTF(("cbb_pcic_socket_disable\n"));


 exca_putb(&sc->exca[0], EXCA_INTR, 0);
 pause("cbbP1", hz / 100);


 cbb_power(brdev, CARD_OFF);
 exca_putb(&sc->exca[0], EXCA_PWRCTL, 0);


 pause("cbbP2", hz * 300 / 1000);


 exca_putb(&sc->exca[0], EXCA_INTR, EXCA_INTR_ENABLE);
 return (0);
}

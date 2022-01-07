
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int wait_for_port_enable; } ;


 int mpssas_send_portenable (struct mps_softc*) ;

int
mpssas_startup(struct mps_softc *sc)
{






 sc->wait_for_port_enable = 1;
 mpssas_send_portenable(sc);
 return (0);
}

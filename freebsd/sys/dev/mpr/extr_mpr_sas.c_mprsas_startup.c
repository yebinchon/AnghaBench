
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int wait_for_port_enable; } ;


 int mprsas_send_portenable (struct mpr_softc*) ;

int
mprsas_startup(struct mpr_softc *sc)
{





 sc->wait_for_port_enable = 1;
 mprsas_send_portenable(sc);
 return (0);
}

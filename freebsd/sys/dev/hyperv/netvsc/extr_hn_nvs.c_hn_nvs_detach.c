
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int dummy; } ;


 int hn_nvs_disconn_chim (struct hn_softc*) ;
 int hn_nvs_disconn_rxbuf (struct hn_softc*) ;

void
hn_nvs_detach(struct hn_softc *sc)
{


 hn_nvs_disconn_rxbuf(sc);
 hn_nvs_disconn_chim(sc);
}

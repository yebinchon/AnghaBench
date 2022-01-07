
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uchcom_softc {int sc_version; } ;


 int DPRINTF (char*,int ) ;
 int uchcom_get_version (struct uchcom_softc*,int *) ;

__attribute__((used)) static void
uchcom_update_version(struct uchcom_softc *sc)
{
 uchcom_get_version(sc, &sc->sc_version);
 DPRINTF("Chip version: 0x%02x\n", sc->sc_version);
}

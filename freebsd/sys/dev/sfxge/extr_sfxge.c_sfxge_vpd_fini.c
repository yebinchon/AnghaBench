
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int vpd_data; } ;


 int M_SFXGE ;
 int free (int ,int ) ;

__attribute__((used)) static void
sfxge_vpd_fini(struct sfxge_softc *sc)
{
 free(sc->vpd_data, M_SFXGE);
}

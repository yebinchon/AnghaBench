
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int dpm_pg0; int dpm_flush_entry; int dpm_entry_used; int enclosure_table; int removal_table; int mapping_table; } ;


 int M_MPR ;
 int free (int ,int ) ;

void
mpr_mapping_free_memory(struct mpr_softc *sc)
{
 free(sc->mapping_table, M_MPR);
 free(sc->removal_table, M_MPR);
 free(sc->enclosure_table, M_MPR);
 free(sc->dpm_entry_used, M_MPR);
 free(sc->dpm_flush_entry, M_MPR);
 free(sc->dpm_pg0, M_MPR);
}

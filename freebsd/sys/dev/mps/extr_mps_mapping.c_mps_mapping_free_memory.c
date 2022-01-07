
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int dpm_pg0; int dpm_flush_entry; int dpm_entry_used; int enclosure_table; int removal_table; int mapping_table; } ;


 int M_MPT2 ;
 int free (int ,int ) ;

void
mps_mapping_free_memory(struct mps_softc *sc)
{
 free(sc->mapping_table, M_MPT2);
 free(sc->removal_table, M_MPT2);
 free(sc->enclosure_table, M_MPT2);
 free(sc->dpm_entry_used, M_MPT2);
 free(sc->dpm_flush_entry, M_MPT2);
 free(sc->dpm_pg0, M_MPT2);
}

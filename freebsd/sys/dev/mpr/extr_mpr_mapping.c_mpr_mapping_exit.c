
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int dummy; } ;


 int _mapping_flush_dpm_pages (struct mpr_softc*) ;
 int mpr_mapping_free_memory (struct mpr_softc*) ;

void
mpr_mapping_exit(struct mpr_softc *sc)
{
 _mapping_flush_dpm_pages(sc);
 mpr_mapping_free_memory(sc);
}

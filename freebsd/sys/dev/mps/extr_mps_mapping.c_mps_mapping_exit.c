
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int dummy; } ;


 int _mapping_flush_dpm_pages (struct mps_softc*) ;
 int mps_mapping_free_memory (struct mps_softc*) ;

void
mps_mapping_exit(struct mps_softc *sc)
{
 _mapping_flush_dpm_pages(sc);
 mps_mapping_free_memory(sc);
}

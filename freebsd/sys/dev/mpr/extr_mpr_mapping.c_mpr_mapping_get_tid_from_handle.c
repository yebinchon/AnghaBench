
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mpr_softc {int dummy; } ;


 unsigned int _mapping_get_mt_idx_from_handle (struct mpr_softc*,int ) ;

unsigned int
mpr_mapping_get_tid_from_handle(struct mpr_softc *sc, u16 handle)
{
 return (_mapping_get_mt_idx_from_handle(sc, handle));
}

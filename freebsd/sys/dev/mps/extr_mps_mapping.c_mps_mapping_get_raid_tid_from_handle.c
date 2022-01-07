
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mps_softc {int dummy; } ;


 unsigned int _mapping_get_ir_mt_idx_from_handle (struct mps_softc*,int ) ;

unsigned int
mps_mapping_get_raid_tid_from_handle(struct mps_softc *sc, u16 volHandle)
{
 return (_mapping_get_ir_mt_idx_from_handle(sc, volHandle));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct TYPE_2__ {int IRVolumeMappingFlags; } ;
struct mps_softc {size_t max_devices; scalar_t__ max_volumes; scalar_t__ ir_firmware; TYPE_1__ ioc_pg8; struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {int device_info; } ;


 int MPI2_IOCPAGE8_IRFLAGS_HIGH_VOLUME_MAPPING ;
 int MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE ;
 int MPS_DEV_RESERVED ;
 size_t MPS_MAPTABLE_BAD_IDX ;
 int MPS_MAP_IN_USE ;
 int le16toh (int ) ;

__attribute__((used)) static u32
_mapping_get_free_mt_idx(struct mps_softc *sc, u32 start_idx)
{
 u32 map_idx, max_idx = sc->max_devices;
 struct dev_mapping_table *mt_entry = &sc->mapping_table[start_idx];
 u16 volume_mapping_flags;

 volume_mapping_flags = le16toh(sc->ioc_pg8.IRVolumeMappingFlags) &
     MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE;
 if (sc->ir_firmware && (volume_mapping_flags ==
     MPI2_IOCPAGE8_IRFLAGS_HIGH_VOLUME_MAPPING))
  max_idx -= sc->max_volumes;

 for (map_idx = start_idx; map_idx < max_idx; map_idx++, mt_entry++)
  if (!(mt_entry->device_info & (MPS_MAP_IN_USE |
      MPS_DEV_RESERVED)))
   return map_idx;

 return MPS_MAPTABLE_BAD_IDX;
}

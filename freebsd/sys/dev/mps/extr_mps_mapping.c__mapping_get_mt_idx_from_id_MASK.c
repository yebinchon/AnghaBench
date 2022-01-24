#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct mps_softc {size_t max_devices; struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ physical_id; } ;

/* Variables and functions */
 size_t MPS_MAPTABLE_BAD_IDX ; 

__attribute__((used)) static u32
FUNC0(struct mps_softc *sc, u64 dev_id)
{
	u32 map_idx;
	struct dev_mapping_table *mt_entry;

	for (map_idx = 0; map_idx < sc->max_devices; map_idx++) {
		mt_entry = &sc->mapping_table[map_idx];
		if (mt_entry->physical_id == dev_id)
			return map_idx;
	}
	return MPS_MAPTABLE_BAD_IDX;
}
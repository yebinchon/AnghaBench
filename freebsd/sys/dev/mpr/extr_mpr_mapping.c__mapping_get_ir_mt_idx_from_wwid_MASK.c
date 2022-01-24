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
struct mpr_softc {struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ physical_id; } ;

/* Variables and functions */
 size_t MPR_MAPTABLE_BAD_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct mpr_softc*,size_t*,size_t*) ; 

__attribute__((used)) static u32
FUNC1(struct mpr_softc *sc, u64 wwid)
{
	u32 start_idx, end_idx, map_idx;
	struct dev_mapping_table *mt_entry;

	FUNC0(sc, &start_idx, &end_idx);
	mt_entry = &sc->mapping_table[start_idx];
	for (map_idx = start_idx; map_idx <= end_idx; map_idx++, mt_entry++)
		if (mt_entry->physical_id == wwid)
			return map_idx;

	return MPR_MAPTABLE_BAD_IDX;
}
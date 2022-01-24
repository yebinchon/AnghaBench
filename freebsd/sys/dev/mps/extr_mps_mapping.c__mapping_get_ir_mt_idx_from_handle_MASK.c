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
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct mps_softc {struct dev_mapping_table* mapping_table; } ;
struct dev_mapping_table {scalar_t__ dev_handle; } ;

/* Variables and functions */
 size_t MPS_MAPTABLE_BAD_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct mps_softc*,size_t*,size_t*) ; 

__attribute__((used)) static u32
FUNC1(struct mps_softc *sc, u16 volHandle)
{
	u32 start_idx, end_idx, map_idx;
	struct dev_mapping_table *mt_entry;

	FUNC0(sc, &start_idx, &end_idx);
	mt_entry = &sc->mapping_table[start_idx];
	for (map_idx = start_idx; map_idx <= end_idx; map_idx++, mt_entry++)
		if (mt_entry->dev_handle == volHandle)
			return map_idx;

	return MPS_MAPTABLE_BAD_IDX;
}
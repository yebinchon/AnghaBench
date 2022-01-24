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
typedef  size_t u_int ;
struct intr_map_entry {intptr_t xref; int /*<<< orphan*/ * isrc; struct intr_map_data* map_data; int /*<<< orphan*/  dev; } ;
struct intr_map_data {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_INTRNG ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct intr_map_entry** irq_map ; 
 size_t irq_map_count ; 
 size_t irq_map_first_free_idx ; 
 int /*<<< orphan*/  irq_map_lock ; 
 struct intr_map_entry* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

u_int
FUNC4(device_t dev, intptr_t xref, struct intr_map_data *data)
{
	u_int i;
	struct intr_map_entry *entry;

	/* Prepare new entry first. */
	entry = FUNC0(sizeof(*entry), M_INTRNG, M_WAITOK | M_ZERO);

	entry->dev = dev;
	entry->xref = xref;
	entry->map_data = data;
	entry->isrc = NULL;

	FUNC1(&irq_map_lock);
	for (i = irq_map_first_free_idx; i < irq_map_count; i++) {
		if (irq_map[i] == NULL) {
			irq_map[i] = entry;
			irq_map_first_free_idx = i + 1;
			FUNC2(&irq_map_lock);
			return (i);
		}
	}
	FUNC2(&irq_map_lock);

	/* XXX Expand irq_map table */
	FUNC3("IRQ mapping table is full.");
}
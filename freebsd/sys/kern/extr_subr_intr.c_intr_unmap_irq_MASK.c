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
struct intr_map_entry {int /*<<< orphan*/  map_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_INTRNG ; 
 int /*<<< orphan*/  FUNC0 (struct intr_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct intr_map_entry** irq_map ; 
 size_t irq_map_count ; 
 size_t irq_map_first_free_idx ; 
 int /*<<< orphan*/  irq_map_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 

void
FUNC5(u_int res_id)
{
	struct intr_map_entry *entry;

	FUNC2(&irq_map_lock);
	if ((res_id >= irq_map_count) || (irq_map[res_id] == NULL))
		FUNC4("Attempt to unmap invalid resource id: %u\n", res_id);
	entry = irq_map[res_id];
	irq_map[res_id] = NULL;
	irq_map_first_free_idx = res_id;
	FUNC3(&irq_map_lock);
	FUNC1(entry->map_data);
	FUNC0(entry, M_INTRNG);
}
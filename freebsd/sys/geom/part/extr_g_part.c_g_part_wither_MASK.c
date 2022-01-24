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
struct g_provider {int /*<<< orphan*/ * private; } ;
struct g_part_table {int /*<<< orphan*/  gpt_entry; } ;
struct g_part_entry {struct g_provider* gpe_pp; } ;
struct g_geom {struct g_part_table* softc; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_part_table*,int /*<<< orphan*/ *) ; 
 struct g_part_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct g_part_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_GEOM ; 
 int /*<<< orphan*/  FUNC3 (struct g_part_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_geom*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct g_provider*,int) ; 
 int /*<<< orphan*/  gpe_entry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct g_geom *gp, int error)
{
	struct g_part_entry *entry;
	struct g_part_table *table;
	struct g_provider *pp;

	table = gp->softc;
	if (table != NULL) {
		gp->softc = NULL;
		while ((entry = FUNC1(&table->gpt_entry)) != NULL) {
			FUNC2(entry, gpe_entry);
			pp = entry->gpe_pp;
			entry->gpe_pp = NULL;
			if (pp != NULL) {
				pp->private = NULL;
				FUNC5(pp, error);
			}
			FUNC3(entry);
		}
		FUNC0(table, NULL);
		FUNC6((kobj_t)table, M_GEOM);
	}
	FUNC4(gp, error);
}
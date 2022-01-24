#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct g_provider {int mediasize; int sectorsize; } ;
struct TYPE_7__ {TYPE_2__* map; } ;
struct g_part_vtoc8_table {TYPE_3__ vtoc; } ;
struct g_part_table {TYPE_1__* gpt_gp; } ;
struct g_part_parms {int gpp_size; } ;
struct g_part_entry {int gpe_index; scalar_t__ gpe_start; scalar_t__ gpe_end; struct g_provider* gpe_pp; } ;
struct TYPE_8__ {struct g_provider* provider; } ;
struct TYPE_6__ {int /*<<< orphan*/  nblks; } ;
struct TYPE_5__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int g_debugflags ; 
 scalar_t__ FUNC2 (struct g_part_vtoc8_table*,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (struct g_part_table*,struct g_provider*) ; 

__attribute__((used)) static int
FUNC4(struct g_part_table *basetable,
    struct g_part_entry *entry, struct g_part_parms *gpp)
{
	struct g_part_vtoc8_table *table;
	struct g_provider *pp;
	uint64_t size;

	if (entry == NULL) {
		pp = FUNC0(&basetable->gpt_gp->consumer)->provider;
		return (FUNC3(basetable, pp));
	}
	table = (struct g_part_vtoc8_table *)basetable;
	size = gpp->gpp_size;
	if (FUNC2(table, NULL, &size) != 0)
		return (EINVAL);
	/* XXX: prevent unexpected shrinking. */
	pp = entry->gpe_pp;
	if ((g_debugflags & 0x10) == 0 && size < gpp->gpp_size &&
	    pp->mediasize / pp->sectorsize > size)
		return (EBUSY);
	entry->gpe_end = entry->gpe_start + size - 1;
	FUNC1(&table->vtoc.map[entry->gpe_index - 1].nblks, size);

	return (0);
}
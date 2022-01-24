#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct g_provider {int dummy; } ;
struct g_part_table {TYPE_2__* gpt_gp; } ;
struct g_part_parms {scalar_t__ gpp_size; } ;
struct g_part_entry {scalar_t__ gpe_start; scalar_t__ gpe_end; } ;
struct TYPE_4__ {scalar_t__ p_size; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;
struct TYPE_6__ {struct g_provider* provider; } ;
struct TYPE_5__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct g_part_table*,struct g_provider*) ; 

__attribute__((used)) static int
FUNC2(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct g_part_parms *gpp)
{
	struct g_part_bsd_entry *entry;
	struct g_provider *pp;

	if (baseentry == NULL) {
		pp = FUNC0(&basetable->gpt_gp->consumer)->provider;
		FUNC1(basetable, pp);
		return (0);
	}
	entry = (struct g_part_bsd_entry *)baseentry;
	baseentry->gpe_end = baseentry->gpe_start + gpp->gpp_size - 1;
	entry->part.p_size = gpp->gpp_size;

	return (0);
}
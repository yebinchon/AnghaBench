#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct group_des {int nports; int last; int /*<<< orphan*/  first_id; int /*<<< orphan*/  pipename; int /*<<< orphan*/  custom_port; TYPE_1__* ports; } ;
struct TYPE_4__ {int num_groups; int /*<<< orphan*/  base_name; } ;
struct TYPE_3__ {struct group_des* group; } ;

/* Variables and functions */
 TYPE_2__ glob_arg ; 
 struct group_des* groups ; 
 TYPE_1__* ports ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	int i, j, t = 0;
	struct group_des *g = NULL;
	for (i = 0; i < glob_arg.num_groups; i++) {
		g = &groups[i];
		g->ports = &ports[t];
		for (j = 0; j < g->nports; j++)
			g->ports[j].group = g;
		t += g->nports;
		if (!g->custom_port)
			FUNC1(g->pipename, glob_arg.base_name);
		for (j = 0; j < i; j++) {
			struct group_des *h = &groups[j];
			if (!FUNC0(h->pipename, g->pipename))
				g->first_id += h->nports;
		}
	}
	g->last = 1;
}
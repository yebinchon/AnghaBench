#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pmcpl_ct_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pa_graphfile; } ;

/* Variables and functions */
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pmcpl_ct_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcpl_ct_node*) ; 
 struct pmcpl_ct_node* pmcpl_ct_root ; 
 int pmcstat_npmcs ; 

__attribute__((used)) static void
FUNC3(struct pmcpl_ct_node *ct)
{
	int i;

	if (ct == pmcpl_ct_root) {
		FUNC0(args.pa_graphfile, "fn=root\n");
		FUNC0(args.pa_graphfile, "0x0 1");
		for (i = 0; i<pmcstat_npmcs ; i++)
			FUNC0(args.pa_graphfile, " 0");
		FUNC0(args.pa_graphfile, "\n");
		FUNC1(ct, 0, 0);
	} else
		FUNC2(ct);
}
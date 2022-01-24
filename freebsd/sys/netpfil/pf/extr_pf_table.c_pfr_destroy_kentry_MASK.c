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
struct pfr_kentry {int /*<<< orphan*/  pfrke_counters; } ;

/* Variables and functions */
 int PFR_DIR_MAX ; 
 int PFR_OP_ADDR_MAX ; 
 int /*<<< orphan*/  V_pfr_kentry_z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pfr_kentry*) ; 

__attribute__((used)) static void
FUNC2(struct pfr_kentry *ke)
{
	int pfr_dir, pfr_op;

	for (pfr_dir = 0; pfr_dir < PFR_DIR_MAX; pfr_dir ++)
		for (pfr_op = 0; pfr_op < PFR_OP_ADDR_MAX; pfr_op ++)
			FUNC0(&ke->pfrke_counters,
			    pfr_dir, pfr_op);

	FUNC1(V_pfr_kentry_z, ke);
}
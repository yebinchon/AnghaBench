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
struct ixl_pf {int stat_offsets_loaded; int /*<<< orphan*/  stats_offsets; int /*<<< orphan*/  stats; } ;
struct i40e_hw_port_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void
FUNC1(struct ixl_pf *pf)
{
	FUNC0(&pf->stats, sizeof(struct i40e_hw_port_stats));
	FUNC0(&pf->stats_offsets, sizeof(struct i40e_hw_port_stats));
	pf->stat_offsets_loaded = false;
}
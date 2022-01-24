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
struct cpu_group {int dummy; } ;

/* Variables and functions */
 int mp_ncpus ; 
 struct cpu_group* FUNC0 (int) ; 
 struct cpu_group* FUNC1 () ; 
 int /*<<< orphan*/  topo_root ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cpu_group*) ; 

struct cpu_group *
FUNC3(void)
{
	struct cpu_group *cg_root;

	if (mp_ncpus <= 1)
		return (FUNC1());

	cg_root = FUNC0(1);
	FUNC2(&topo_root, cg_root);
	return (cg_root);
}
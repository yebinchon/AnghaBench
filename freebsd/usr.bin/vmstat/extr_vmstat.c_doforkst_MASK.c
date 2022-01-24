#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double v_forks; double v_vforks; double v_rforks; scalar_t__ v_rforkpages; scalar_t__ v_vforkpages; scalar_t__ v_forkpages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__ sum ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,double,scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(void)
{

	FUNC0(&sum);
	FUNC3("fork-statistics");
	FUNC2("{:fork/%u} {N:forks}, {:fork-pages/%u} {N:pages}, "
	    "{L:average} {:fork-average/%.2f}\n",
	    sum.v_forks, sum.v_forkpages,
	    sum.v_forks == 0 ? 0.0 :
	    (double)sum.v_forkpages / sum.v_forks);
	FUNC2("{:vfork/%u} {N:vforks}, {:vfork-pages/%u} {N:pages}, "
	    "{L:average} {:vfork-average/%.2f}\n",
	    sum.v_vforks, sum.v_vforkpages,
	    sum.v_vforks == 0 ? 0.0 :
	    (double)sum.v_vforkpages / sum.v_vforks);
	FUNC2("{:rfork/%u} {N:rforks}, {:rfork-pages/%u} {N:pages}, "
	    "{L:average} {:rfork-average/%.2f}\n",
	    sum.v_rforks, sum.v_rforkpages,
	    sum.v_rforks == 0 ? 0.0 :
	    (double)sum.v_rforkpages / sum.v_rforks);
	FUNC1("fork-statistics");
}
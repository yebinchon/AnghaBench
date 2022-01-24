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
struct cryptkop {int /*<<< orphan*/  krp_crid; } ;
struct TYPE_2__ {int /*<<< orphan*/  cs_kops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cryptkop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crp_kq ; 
 int /*<<< orphan*/  crp_q ; 
 scalar_t__ crp_sleep ; 
 int FUNC3 (struct cryptkop*,int /*<<< orphan*/ ) ; 
 TYPE_1__ cryptostats ; 
 int /*<<< orphan*/  krp_next ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct cryptkop *krp)
{
	int error;

	cryptostats.cs_kops++;

	error = FUNC3(krp, krp->krp_crid);
	if (error == ERESTART) {
		FUNC0();
		FUNC2(&crp_kq, krp, krp_next);
		if (crp_sleep)
			FUNC4(&crp_q);
		FUNC1();
		error = 0;
	}
	return error;
}
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
struct nm_ifreq {int /*<<< orphan*/  nifr_name; } ;
struct TYPE_2__ {int (* config ) (struct nm_ifreq*) ;} ;
struct nm_bridge {TYPE_1__ bdg_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct nm_bridge*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct nm_bridge* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nm_ifreq*) ; 

int
FUNC6(struct nm_ifreq *nr)
{
	struct nm_bridge *b;
	int error = EINVAL;

	FUNC2();
	b = FUNC4(nr->nifr_name, 0, NULL);
	if (!b) {
		FUNC3();
		return error;
	}
	FUNC3();
	/* Don't call config() with NMG_LOCK() held */
	FUNC0(b);
	if (b->bdg_ops.config != NULL)
		error = b->bdg_ops.config(nr);
	FUNC1(b);
	return error;
}
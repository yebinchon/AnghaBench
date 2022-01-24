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

/* Variables and functions */
 int /*<<< orphan*/  ARC4_ENTR_HAVE ; 
 int /*<<< orphan*/  ARC4_ENTR_NONE ; 
 int /*<<< orphan*/  PUSER ; 
 int /*<<< orphan*/  arc4rand_iniseed_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  random_alg_context ; 
 int /*<<< orphan*/  rsel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{

	FUNC2(&rsel, PUSER);
	FUNC3(&random_alg_context);
	FUNC1("random: unblocking device.\n");
	/* Do random(9) a favour while we are about it. */
	(void)FUNC0(&arc4rand_iniseed_state, ARC4_ENTR_NONE, ARC4_ENTR_HAVE);
}
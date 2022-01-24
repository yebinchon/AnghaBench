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
struct pfs_info {int /*<<< orphan*/  pi_mutex; int /*<<< orphan*/ * pi_unrhdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct pfs_info *pi)
{

	FUNC0(pi->pi_unrhdr);
	pi->pi_unrhdr = NULL;
	FUNC1(&pi->pi_mutex);
}
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
struct pargs {int /*<<< orphan*/  ar_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pargs*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct pargs *pa)
{

	if (pa == NULL)
		return;
	if (FUNC1(&pa->ar_ref))
		FUNC0(pa);
}
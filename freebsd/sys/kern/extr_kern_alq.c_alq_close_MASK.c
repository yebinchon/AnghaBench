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
struct alq {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct alq*) ; 
 int /*<<< orphan*/  FUNC1 (struct alq*) ; 

void
FUNC2(struct alq *alq)
{
	/* Only flush and destroy alq if not already shutting down. */
	if (FUNC0(alq) == 0)
		FUNC1(alq);
}
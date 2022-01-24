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
struct knlist {int kl_autodestroy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct knlist*) ; 
 int /*<<< orphan*/  M_KQUEUE ; 
 int /*<<< orphan*/  FUNC1 (struct knlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct knlist*) ; 
 scalar_t__ FUNC3 (struct knlist*) ; 

void
FUNC4(struct knlist *knl)
{

	FUNC0(knl);
	knl->kl_autodestroy = 1;
	if (FUNC3(knl)) {
		FUNC2(knl);
		FUNC1(knl, M_KQUEUE);
	}
}
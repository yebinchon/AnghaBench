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
struct plimit {int /*<<< orphan*/  pl_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PLIMIT ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct plimit *limp)
{

	if (FUNC1(&limp->pl_refcnt))
		FUNC0((void *)limp, M_PLIMIT);
}
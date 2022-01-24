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
struct range {int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;

/* Variables and functions */
 int /*<<< orphan*/ * last ; 
 int /*<<< orphan*/  FUNC0 (struct range*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(int i, struct range *rold, bool dup)
{

	FUNC1("%d:", i);
	last[i] = rold->to;
	FUNC0(rold);
	if (dup)
		return;
	i--;
	FUNC2(i, rold->from, NULL);
	FUNC2(i, rold->to, "  ");
}
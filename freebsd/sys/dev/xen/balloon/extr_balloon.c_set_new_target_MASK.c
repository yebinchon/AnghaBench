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
struct TYPE_2__ {unsigned long hard_limit; int /*<<< orphan*/  target_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  balloon_process ; 
 TYPE_1__ bs ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC3(unsigned long target)
{
	/* No need for lock. Not read-modify-write updates. */
	bs.hard_limit   = ~0UL;
	bs.target_pages = FUNC0(target, FUNC1());
	FUNC2(balloon_process);
}
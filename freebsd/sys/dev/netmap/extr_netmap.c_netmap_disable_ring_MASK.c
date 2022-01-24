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
struct netmap_kring {int /*<<< orphan*/  q_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_kring*) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_kring*,int) ; 

__attribute__((used)) static void
FUNC4(struct netmap_kring *kr, int stopped)
{
	FUNC3(kr, stopped);
	// XXX check if nm_kr_stop is sufficient
	FUNC0(&kr->q_lock);
	FUNC1(&kr->q_lock);
	FUNC2(kr);
}
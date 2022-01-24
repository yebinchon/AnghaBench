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
struct pipepair {int /*<<< orphan*/  pp_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *mem, int size)
{
	struct pipepair *pp;

	FUNC0(size == sizeof(*pp), ("pipe_zone_fini: wrong size"));

	pp = (struct pipepair *)mem;

	FUNC1(&pp->pp_mtx);
}
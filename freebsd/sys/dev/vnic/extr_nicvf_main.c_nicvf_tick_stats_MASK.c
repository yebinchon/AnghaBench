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
struct nicvf {int /*<<< orphan*/  stats_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct nicvf*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct nicvf *nic;

	nic = (struct nicvf *)arg;

	/* Read the statistics */
	FUNC1(nic);

	FUNC0(&nic->stats_callout, hz, nicvf_tick_stats, nic);
}
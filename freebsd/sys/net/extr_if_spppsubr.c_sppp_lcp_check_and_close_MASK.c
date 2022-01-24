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
struct sppp {scalar_t__ pp_phase; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* Close ) (struct sppp*) ;} ;

/* Variables and functions */
 scalar_t__ PHASE_NETWORK ; 
 TYPE_1__ lcp ; 
 scalar_t__ FUNC0 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC1 (struct sppp*) ; 

__attribute__((used)) static void
FUNC2(struct sppp *sp)
{

	if (sp->pp_phase < PHASE_NETWORK)
		/* don't bother, we are already going down */
		return;

	if (FUNC0(sp))
		return;

	lcp.Close(sp);
}
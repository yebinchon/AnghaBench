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
struct mpssas_softc {int flags; int /*<<< orphan*/  sc; int /*<<< orphan*/  sim; } ;

/* Variables and functions */
 int MPSSAS_QUEUE_FROZEN ; 
 int /*<<< orphan*/  MPS_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct mpssas_softc *sassc)
{
	if (sassc->flags & MPSSAS_QUEUE_FROZEN) {
		sassc->flags &= ~MPSSAS_QUEUE_FROZEN;
		FUNC1(sassc->sim, 1);
		FUNC0(sassc->sc, MPS_INFO, "Unfreezing SIM queue\n");
	}
}
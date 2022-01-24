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
struct glc_softc {int /*<<< orphan*/ * sc_hwirq_status; int /*<<< orphan*/  sc_interrupt_status; } ;

/* Variables and functions */
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(void *xsc)
{
	struct glc_softc *sc = xsc; 

	FUNC1();
	FUNC0(&sc->sc_interrupt_status, *sc->sc_hwirq_status);
	return (FILTER_SCHEDULE_THREAD);
}
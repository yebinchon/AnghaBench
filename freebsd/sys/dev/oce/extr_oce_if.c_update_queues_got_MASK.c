#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nrqs; int intr_count; int nwqs; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(POCE_SOFTC sc)
{
	if (FUNC1(sc)) {
		sc->nrqs = sc->intr_count + 1;
		sc->nwqs = sc->intr_count;
	} else {
		sc->nrqs = 1;
		sc->nwqs = 1;
	}

	if (FUNC0(sc))
		sc->nwqs = 1;
}
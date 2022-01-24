#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  max_vlans; void* nwqs; void* nrssqs; scalar_t__ nrqs; int /*<<< orphan*/  be3_native; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX_VLANFILTER_SIZE ; 
 void* OCE_LEGACY_MODE_RSS ; 
 void* OCE_MAX_RSS ; 
 void* OCE_MAX_WQ ; 
 int FUNC2 (TYPE_1__*,void*) ; 

__attribute__((used)) static void
FUNC3(POCE_SOFTC sc)
{
	int rc = 0;
	uint32_t max_rss = 0;

	if ((FUNC0(sc) || FUNC1(sc)) && (!sc->be3_native))
		max_rss = OCE_LEGACY_MODE_RSS;
	else
		max_rss = OCE_MAX_RSS;

	if (!FUNC0(sc)) {
		rc = FUNC2(sc, max_rss);
		if (rc) {
			sc->nwqs = OCE_MAX_WQ;
			sc->nrssqs = max_rss;
			sc->nrqs = sc->nrssqs + 1;
		}
	}
	else { /* For BE3 don't rely on fw for determining the resources */
		sc->nrssqs = max_rss;
		sc->nrqs = sc->nrssqs + 1;
		sc->nwqs = OCE_MAX_WQ;
		sc->max_vlans = MAX_VLANFILTER_SIZE; 
	}
}
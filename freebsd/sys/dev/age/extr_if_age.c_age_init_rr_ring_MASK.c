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
struct TYPE_2__ {int /*<<< orphan*/  age_rr_ring_map; int /*<<< orphan*/  age_rr_ring_tag; scalar_t__ age_rr_cons; } ;
struct age_ring_data {int /*<<< orphan*/  age_rr_ring; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_RR_RING_SZ ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct age_softc *sc)
{
	struct age_ring_data *rd;

	FUNC0(sc);

	sc->age_cdata.age_rr_cons = 0;
	FUNC1(sc);

	rd = &sc->age_rdata;
	FUNC3(rd->age_rr_ring, AGE_RR_RING_SZ);
	FUNC2(sc->age_cdata.age_rr_ring_tag,
	    sc->age_cdata.age_rr_ring_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
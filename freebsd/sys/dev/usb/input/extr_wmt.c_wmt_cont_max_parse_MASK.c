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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct wmt_softc {int /*<<< orphan*/  dev; TYPE_1__* ai; int /*<<< orphan*/  cont_max_loc; } ;
struct TYPE_2__ {scalar_t__ max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 scalar_t__ MAX_MT_SLOTS ; 
 size_t WMT_SLOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct wmt_softc *sc, const void *r_ptr, uint16_t r_len)
{
	uint32_t cont_count_max;

	cont_count_max = FUNC2((const uint8_t *)r_ptr + 1,
	    r_len - 1, &sc->cont_max_loc);
	if (cont_count_max > MAX_MT_SLOTS) {
		FUNC0("Hardware reported %d contacts while only %d is "
		    "supported\n", (int)cont_count_max, MAX_MT_SLOTS);
		cont_count_max = MAX_MT_SLOTS;
	}
	/* Feature report is a primary source of 'Contact Count Maximum' */
	if (cont_count_max > 0 &&
	    cont_count_max != sc->ai[WMT_SLOT].max + 1) {
		sc->ai[WMT_SLOT].max = cont_count_max - 1;
		FUNC1(sc->dev, "%d feature report contacts",
		    cont_count_max);
	}
}
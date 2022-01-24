#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct mpr_softc {int /*<<< orphan*/ * events_to_record; } ;
struct TYPE_3__ {int /*<<< orphan*/ * Types; } ;
typedef  TYPE_1__ mpr_event_enable_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpr_softc*) ; 

__attribute__((used)) static void
FUNC2(struct mpr_softc *sc, mpr_event_enable_t *data)
{
	uint8_t	i;

	FUNC0(sc);
	for (i = 0; i < 4; i++) {
		sc->events_to_record[i] = data->Types[i];
	}
	FUNC1(sc);
}
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
typedef  scalar_t__ uint64_t ;
struct xae_softc {scalar_t__* counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ UINT64_MAX ; 
 int XAE_MAX_COUNTERS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static uint64_t
FUNC3(struct xae_softc *sc, int counter_id)
{
	uint64_t new, old;
	uint64_t delta;

	FUNC0(counter_id < XAE_MAX_COUNTERS,
		("counter %d is out of range", counter_id));

	new = FUNC1(sc, FUNC2(counter_id));
	old = sc->counters[counter_id];

	if (new >= old)
		delta = new - old;
	else
		delta = UINT64_MAX - old + new;
	sc->counters[counter_id] = new;

	return (delta);
}
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
struct smist_softc {TYPE_1__* sets; } ;
struct cf_setting {int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GET_STATE ; 
 int /*<<< orphan*/  SET_STATE ; 
 struct smist_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smist_softc*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, const struct cf_setting *set)
{
	struct smist_softc *sc;
	int rv, state, req_state, try;

	/* Look up appropriate bit value based on frequency. */
	sc = FUNC3(dev);
	if (FUNC0(set->freq, sc->sets[0].freq))
		req_state = 0;
	else if (FUNC0(set->freq, sc->sets[1].freq))
		req_state = 1;
	else
		return (EINVAL);

	FUNC2(dev, "requested setting %d\n", req_state);

	rv = FUNC4(sc, &state, GET_STATE);
	if (state == req_state)
		return (0);

	try = 3;
	do {
		rv = FUNC4(sc, &req_state, SET_STATE);

		/* Sleep for 200 microseconds.  This value is just a guess. */
		if (rv)
			FUNC1(200);
	} while (rv && --try);
	FUNC2(dev, "set_state return %d, tried %d times\n",
	    rv, 4 - try);

	return (rv);
}
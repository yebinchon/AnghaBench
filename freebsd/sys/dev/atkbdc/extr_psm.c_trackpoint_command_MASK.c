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
struct TYPE_2__ {scalar_t__ capPassthrough; } ;
struct psm_softc {TYPE_1__ synhw; int /*<<< orphan*/  kbdc; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PSM_ACK ; 
 int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct psm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct psm_softc*) ; 

__attribute__((used)) static int
FUNC4(struct psm_softc *sc, int cmd, int loc, int val)
{
	const int seq[] = { 0xe2, cmd, loc, val };
	int i;

	if (sc->synhw.capPassthrough)
		FUNC3(sc);

	for (i = 0; i < FUNC0(seq); i++) {
		if (sc->synhw.capPassthrough &&
		    (seq[i] == 0xff || seq[i] == 0xe7))
			if (FUNC1(sc->kbdc, 0xe7) != PSM_ACK) {
				FUNC2(sc);
				return (EIO);
			}
		if (FUNC1(sc->kbdc, seq[i]) != PSM_ACK) {
			if (sc->synhw.capPassthrough)
				FUNC2(sc);
			return (EIO);
		}
	}

	if (sc->synhw.capPassthrough)
		FUNC2(sc);

	return (0);
}
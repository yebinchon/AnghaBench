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
typedef  int uint32_t ;
struct bwi_softc {int dummy; } ;
struct bwi_regwin {int dummy; } ;

/* Variables and functions */
 int BWI_DBG_ATTACH ; 
 int BWI_DBG_INIT ; 
 int /*<<< orphan*/  BWI_STATE_LO ; 
 int BWI_STATE_LO_CLOCK ; 
 int BWI_STATE_LO_RESET ; 
 int FUNC0 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_regwin*) ; 

int
FUNC4(struct bwi_softc *sc, struct bwi_regwin *rw)
{
	uint32_t val, disable_bits;

	disable_bits = FUNC2(sc);
	val = FUNC0(sc, BWI_STATE_LO);

	if ((val & (BWI_STATE_LO_CLOCK |
		    BWI_STATE_LO_RESET |
		    disable_bits)) == BWI_STATE_LO_CLOCK) {
		FUNC1(sc, BWI_DBG_ATTACH | BWI_DBG_INIT, "%s is enabled\n",
			FUNC3(rw));
		return 1;
	} else {
		FUNC1(sc, BWI_DBG_ATTACH | BWI_DBG_INIT, "%s is disabled\n",
			FUNC3(rw));
		return 0;
	}
}
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
typedef  int u_int32_t ;
typedef  scalar_t__ time_t ;
struct twe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWE_STATUS_BITS_DESCRIPTION ; 
 int TWE_STATUS_EXPECTED_BITS ; 
 int TWE_STATUS_PANIC_BITS ; 
 int TWE_STATUS_PCI_ABORT ; 
 int TWE_STATUS_PCI_PARITY_ERROR ; 
 int TWE_STATUS_UNEXPECTED_BITS ; 
 scalar_t__ time_second ; 
 int /*<<< orphan*/  FUNC0 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct twe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct twe_softc*,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct twe_softc *sc, u_int32_t status_reg)
{
    int			result;
    static time_t	lastwarn[2] = {0, 0};

    /*
     * This can be a little problematic, as twe_panic may call twe_reset if 
     * TWE_DEBUG is not set, which will call us again as part of the soft reset.
     */
    if ((status_reg & TWE_STATUS_PANIC_BITS) != 0) {
	FUNC3(sc, "FATAL STATUS BIT(S) %b\n", status_reg & TWE_STATUS_PANIC_BITS,
		   TWE_STATUS_BITS_DESCRIPTION);
	FUNC2(sc, "fatal status bits");
    }

    result = 0;
    if ((status_reg & TWE_STATUS_EXPECTED_BITS) != TWE_STATUS_EXPECTED_BITS) {
	if (time_second > (lastwarn[0] + 5)) {
	    FUNC3(sc, "missing expected status bit(s) %b\n", ~status_reg & TWE_STATUS_EXPECTED_BITS, 
		       TWE_STATUS_BITS_DESCRIPTION);
	    lastwarn[0] = time_second;
	}
	result = 1;
    }

    if ((status_reg & TWE_STATUS_UNEXPECTED_BITS) != 0) {
	if (time_second > (lastwarn[1] + 5)) {
	    FUNC3(sc, "unexpected status bit(s) %b\n", status_reg & TWE_STATUS_UNEXPECTED_BITS, 
		       TWE_STATUS_BITS_DESCRIPTION);
	    lastwarn[1] = time_second;
	}
	result = 1;
	if (status_reg & TWE_STATUS_PCI_PARITY_ERROR) {
	    FUNC3(sc, "PCI parity error: Reseat card, move card or buggy device present.\n");
	    FUNC1(sc);
	}
	if (status_reg & TWE_STATUS_PCI_ABORT) {
	    FUNC3(sc, "PCI abort, clearing.\n");
	    FUNC0(sc);
	}
    }

    return(result);
}
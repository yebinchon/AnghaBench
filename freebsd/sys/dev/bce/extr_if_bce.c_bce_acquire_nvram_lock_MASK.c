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
typedef  int u32 ;
struct bce_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCE_NVM_SW_ARB ; 
 int BCE_NVM_SW_ARB_ARB_ARB2 ; 
 int /*<<< orphan*/  BCE_NVM_SW_ARB_ARB_REQ_SET2 ; 
 int /*<<< orphan*/  BCE_VERBOSE_NVRAM ; 
 int /*<<< orphan*/  BCE_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bce_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int EBUSY ; 
 int NVRAM_TIMEOUT_COUNT ; 
 int FUNC4 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bce_softc *sc)
{
	u32 val;
	int j, rc = 0;

	FUNC0(BCE_VERBOSE_NVRAM);

	/* Request access to the flash interface. */
	FUNC5(sc, BCE_NVM_SW_ARB, BCE_NVM_SW_ARB_ARB_REQ_SET2);
	for (j = 0; j < NVRAM_TIMEOUT_COUNT; j++) {
		val = FUNC4(sc, BCE_NVM_SW_ARB);
		if (val & BCE_NVM_SW_ARB_ARB_ARB2)
			break;

		FUNC3(5);
	}

	if (j >= NVRAM_TIMEOUT_COUNT) {
		FUNC2(sc, BCE_WARN, "Timeout acquiring NVRAM lock!\n");
		rc = EBUSY;
	}

	FUNC1(BCE_VERBOSE_NVRAM);
	return (rc);
}
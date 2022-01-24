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
typedef  int /*<<< orphan*/  e6000sw_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E6000SW_RETRIES ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC2(e6000sw_softc_t *sc, uint32_t phy, uint32_t reg,
    uint32_t busybit)
{
	int i;

	for (i = 0; i < E6000SW_RETRIES; i++) {
		if ((FUNC1(sc, phy, reg) & busybit) == 0)
			return (0);
		FUNC0(1);
	}

	return (1);
}
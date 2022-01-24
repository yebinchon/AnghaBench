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
struct iwm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int FUNC1 (struct iwm_softc*,int) ; 

int
FUNC2(struct iwm_softc *sc, uint32_t addr, uint32_t bits, uint32_t mask,
    int timeout)
{
	do {
		if ((FUNC1(sc, addr) & mask) == (bits & mask))
			return (0);
		FUNC0(10);
		timeout -= 10;
	} while (timeout > 0);

	return (ETIMEDOUT);
}
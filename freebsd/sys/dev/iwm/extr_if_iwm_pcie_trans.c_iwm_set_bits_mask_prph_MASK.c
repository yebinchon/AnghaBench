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
 scalar_t__ FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int FUNC2 (struct iwm_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_softc*,int,int) ; 

void
FUNC4(struct iwm_softc *sc,
	uint32_t reg, uint32_t bits, uint32_t mask)
{
	uint32_t val;

	/* XXX: no error path? */
	if (FUNC0(sc)) {
		val = FUNC2(sc, reg) & mask;
		val |= bits;
		FUNC3(sc, reg, val);
		FUNC1(sc);
	}
}
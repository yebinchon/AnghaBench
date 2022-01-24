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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int* out_known; int* out; } ;
struct nct_softc {TYPE_1__ cache; } ;

/* Variables and functions */
 int FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  REG_DAT ; 
 int /*<<< orphan*/  FUNC2 (struct nct_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nct_softc*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void
FUNC4(struct nct_softc *sc, uint32_t pin_num, bool val)
{
	uint8_t bit;
	uint8_t group;

	FUNC1(!FUNC2(sc, pin_num), ("attempt to write input pin"));
	group = pin_num >> 3;
	bit = pin_num & 7;
	if (FUNC0(sc->cache.out_known[group], bit) &&
	    FUNC0(sc->cache.out[group], bit) == val) {
		/* The pin is already in requested state. */
		return;
	}
	sc->cache.out_known[group] |= 1 << bit;
	if (val)
		sc->cache.out[group] |= 1 << bit;
	else
		sc->cache.out[group] &= ~(1 << bit);
	FUNC3(sc, REG_DAT, group, sc->cache.out[group]);
}
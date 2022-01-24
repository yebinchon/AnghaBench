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
typedef  int /*<<< orphan*/  u_int ;
struct gem_softc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct gem_softc*,int /*<<< orphan*/ ) ; 
 int GEM_TRIES ; 

__attribute__((used)) static int
FUNC2(struct gem_softc *sc, u_int bank, bus_addr_t r, uint32_t clr,
    uint32_t set)
{
	int i;
	uint32_t reg;

	for (i = GEM_TRIES; i--; FUNC0(100)) {
		reg = FUNC1(bank, 4, sc, r);
		if ((reg & clr) == 0 && (reg & set) == set)
			return (1);
	}
	return (0);
}
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
struct emu_sc_info {int /*<<< orphan*/  sh; int /*<<< orphan*/  st; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static uint32_t
FUNC4(struct emu_sc_info *sc, unsigned int regno, unsigned int size)
{

	FUNC0(sc != NULL, ("emu_rd: NULL sc"));
	switch (size) {
	case 1:
		return (FUNC1(sc->st, sc->sh, regno));
	case 2:
		return (FUNC2(sc->st, sc->sh, regno));
	case 4:
		return (FUNC3(sc->st, sc->sh, regno));
	}
	return (0xffffffff);
}
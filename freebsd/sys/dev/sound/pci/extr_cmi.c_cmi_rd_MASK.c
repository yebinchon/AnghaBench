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
struct sc_info {int /*<<< orphan*/  sh; int /*<<< orphan*/  st; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static u_int32_t
FUNC5(struct sc_info *sc, int regno, int size)
{
	switch (size) {
	case 1:
		return FUNC1(sc->st, sc->sh, regno);
	case 2:
		return FUNC2(sc->st, sc->sh, regno);
	case 4:
		return FUNC3(sc->st, sc->sh, regno);
	default:
		FUNC0(FUNC4("cmi_rd: failed 0x%04x %d\n", regno, size));
		return 0xFFFFFFFF;
	}
}
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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sc_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  enh_sh; int /*<<< orphan*/  enh_st; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sc_info *sc, u_int8_t reg, u_int8_t val, int line)
{
	u_int8_t n;
	FUNC0(sc->enh_st, sc->enh_sh, reg, val);

	n = FUNC2(sc, reg);
	if (n != val) {
		FUNC1(sc->dev, "sv_direct_set register 0x%02x %d != %d from line %d\n", reg, n, val, line);
	}
}
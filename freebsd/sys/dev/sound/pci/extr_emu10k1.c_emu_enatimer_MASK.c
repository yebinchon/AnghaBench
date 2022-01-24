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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sc_info {scalar_t__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_INTE ; 
 int /*<<< orphan*/  EMU_INTE_INTERTIMERENB ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct sc_info *sc, int go)
{
	u_int32_t x;
	if (go) {
		if (sc->timer++ == 0) {
			x = FUNC0(sc, EMU_INTE, 4);
			x |= EMU_INTE_INTERTIMERENB;
			FUNC1(sc, EMU_INTE, x, 4);
		}
	} else {
		sc->timer = 0;
		x = FUNC0(sc, EMU_INTE, 4);
		x &= ~EMU_INTE_INTERTIMERENB;
		FUNC1(sc, EMU_INTE, x, 4);
	}
	return 0;
}
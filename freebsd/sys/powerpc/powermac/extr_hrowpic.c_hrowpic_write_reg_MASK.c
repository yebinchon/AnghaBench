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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct hrowpic_softc {int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; } ;

/* Variables and functions */
 scalar_t__ HPIC_1ST_OFFSET ; 
 scalar_t__ HPIC_PRIMARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct hrowpic_softc *sc, u_int reg, u_int bank,
    uint32_t val)
{

	if (bank == HPIC_PRIMARY)
		reg += HPIC_1ST_OFFSET;

	FUNC1(sc->sc_bt, sc->sc_bh, reg, val);

	/* XXX Issue a read to force the write to complete. */
	FUNC0(sc->sc_bt, sc->sc_bh, reg);
}
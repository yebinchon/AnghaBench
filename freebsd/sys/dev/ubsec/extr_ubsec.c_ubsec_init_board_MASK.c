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
struct ubsec_softc {int sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_CTRL ; 
 int BS_CTRL_BE32 ; 
 int BS_CTRL_BE64 ; 
 int BS_CTRL_LITTLE_ENDIAN ; 
 int BS_CTRL_MCR1INT ; 
 int BS_CTRL_MCR2INT ; 
 int BS_CTRL_SWNORM ; 
 int FUNC0 (struct ubsec_softc*,int /*<<< orphan*/ ) ; 
 int UBS_FLAGS_HWNORM ; 
 int UBS_FLAGS_KEY ; 
 int UBS_FLAGS_RNG ; 
 int /*<<< orphan*/  FUNC1 (struct ubsec_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ubsec_softc *sc)
{
	u_int32_t ctrl;

	ctrl = FUNC0(sc, BS_CTRL);
	ctrl &= ~(BS_CTRL_BE32 | BS_CTRL_BE64);
	ctrl |= BS_CTRL_LITTLE_ENDIAN | BS_CTRL_MCR1INT;

	if (sc->sc_flags & (UBS_FLAGS_KEY|UBS_FLAGS_RNG))
		ctrl |= BS_CTRL_MCR2INT;
	else
		ctrl &= ~BS_CTRL_MCR2INT;

	if (sc->sc_flags & UBS_FLAGS_HWNORM)
		ctrl &= ~BS_CTRL_SWNORM;

	FUNC1(sc, BS_CTRL, ctrl);
}
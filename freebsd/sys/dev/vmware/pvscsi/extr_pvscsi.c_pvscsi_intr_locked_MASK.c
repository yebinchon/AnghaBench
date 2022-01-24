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
struct pvscsi_softc {scalar_t__ use_msg; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int PVSCSI_INTR_ALL_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_softc*) ; 
 int FUNC3 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvscsi_softc*,int) ; 

__attribute__((used)) static void
FUNC5(struct pvscsi_softc *sc)
{
	uint32_t val;

	FUNC0(&sc->lock, MA_OWNED);

	val = FUNC3(sc);

	if ((val & PVSCSI_INTR_ALL_SUPPORTED) != 0) {
		FUNC4(sc, val & PVSCSI_INTR_ALL_SUPPORTED);
		FUNC1(sc);
		if (sc->use_msg) {
			FUNC2(sc);
		}
	}
}
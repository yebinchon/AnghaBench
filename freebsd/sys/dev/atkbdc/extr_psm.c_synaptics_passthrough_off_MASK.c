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
struct psm_softc {int /*<<< orphan*/  kbdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct psm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct psm_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct psm_softc *sc)
{
	FUNC0(2, (LOG_NOTICE, "psm: turning pass-through mode off.\n"));
	FUNC1(sc->kbdc, 2);
	FUNC1(sc->kbdc, 1);
	FUNC3(sc, FUNC2(sc));
}
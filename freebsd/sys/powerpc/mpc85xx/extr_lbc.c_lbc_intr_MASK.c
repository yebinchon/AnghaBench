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
struct lbc_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_ltesr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBC85XX_LTESR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct lbc_softc *sc = arg;
	uint32_t ltesr;

	ltesr = FUNC0(sc->sc_bst, sc->sc_bsh, LBC85XX_LTESR);
	sc->sc_ltesr = ltesr;
	FUNC1(sc->sc_bst, sc->sc_bsh, LBC85XX_LTESR, ltesr);
	FUNC2(sc->sc_dev);
}
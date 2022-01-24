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
struct machfb_softc {int /*<<< orphan*/  sc_regh; int /*<<< orphan*/  sc_regt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct machfb_softc *sc, uint32_t index, uint32_t data)
{

	FUNC1(sc->sc_regt, sc->sc_regh, index, data);
	FUNC0(sc->sc_regt, sc->sc_regh, index, 4,
	    BUS_SPACE_BARRIER_WRITE);
}
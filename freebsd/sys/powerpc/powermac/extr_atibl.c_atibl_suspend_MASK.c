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
struct atibl_softc {int /*<<< orphan*/  sc_level; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atibl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atibl_softc*,int /*<<< orphan*/ ) ; 
 struct atibl_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct atibl_softc *sc;

	sc = FUNC2(dev);

	sc->sc_level = FUNC0(sc);
	FUNC1(sc, 0);

	return (0);
}
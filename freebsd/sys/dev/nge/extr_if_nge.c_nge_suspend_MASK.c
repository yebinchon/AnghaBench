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
struct nge_softc {int /*<<< orphan*/  nge_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGE_FLAG_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nge_softc*) ; 
 struct nge_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nge_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct nge_softc *sc;

	sc = FUNC2(dev);

	FUNC0(sc);
	FUNC3(sc);
	FUNC4(sc);
	sc->nge_flags |= NGE_FLAG_SUSPENDED;
	FUNC1(sc);

	return (0);
}
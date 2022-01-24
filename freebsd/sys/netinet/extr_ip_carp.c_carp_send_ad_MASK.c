#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct carp_softc {TYPE_1__* sc_carpdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct carp_softc*) ; 

__attribute__((used)) static void
FUNC5(void *v)
{
	struct carp_softc *sc = v;

	FUNC0(sc);
	FUNC3(sc->sc_carpdev->if_vnet);
	FUNC4(sc);
	FUNC2();
	FUNC1(sc);
}
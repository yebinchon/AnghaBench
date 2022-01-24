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
struct syncache {int /*<<< orphan*/  sc_label; scalar_t__ sc_cred; scalar_t__ sc_ipopts; } ;
struct TYPE_2__ {int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 TYPE_1__ V_tcp_syncache ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct syncache*) ; 

__attribute__((used)) static void
FUNC4(struct syncache *sc)
{

	if (sc->sc_ipopts)
		(void) FUNC1(sc->sc_ipopts);
	if (sc->sc_cred)
		FUNC0(sc->sc_cred);
#ifdef MAC
	mac_syncache_destroy(&sc->sc_label);
#endif

	FUNC3(V_tcp_syncache.zone, sc);
}
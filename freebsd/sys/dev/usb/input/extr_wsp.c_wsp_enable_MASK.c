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
struct wsp_softc {int /*<<< orphan*/  sc_state; int /*<<< orphan*/  sc_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WSP_ENABLED ; 
 int /*<<< orphan*/  WSP_LLEVEL_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct wsp_softc *sc)
{
	/* reset status */
	FUNC1(&sc->sc_status, 0, sizeof(sc->sc_status));
	sc->sc_state |= WSP_ENABLED;

	FUNC0(WSP_LLEVEL_INFO, "enabled wsp\n");
	return (0);
}
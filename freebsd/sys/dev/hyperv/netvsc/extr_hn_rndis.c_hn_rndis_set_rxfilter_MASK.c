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
struct hn_softc {int /*<<< orphan*/  hn_ifp; } ;
typedef  int /*<<< orphan*/  filter ;

/* Variables and functions */
 int /*<<< orphan*/  OID_GEN_CURRENT_PACKET_FILTER ; 
 scalar_t__ bootverbose ; 
 int FUNC0 (struct hn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

int
FUNC2(struct hn_softc *sc, uint32_t filter)
{
	int error;

	error = FUNC0(sc, OID_GEN_CURRENT_PACKET_FILTER,
	    &filter, sizeof(filter));
	if (error) {
		FUNC1(sc->hn_ifp, "set RX filter 0x%08x failed: %d\n",
		    filter, error);
	} else {
		if (bootverbose) {
			FUNC1(sc->hn_ifp, "set RX filter 0x%08x done\n",
			    filter);
		}
	}
	return (error);
}
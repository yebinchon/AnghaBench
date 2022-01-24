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
struct mgb_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int MGB_LAN7430_DEVICE_ID ; 
 int MGB_LAN7431_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(struct mgb_softc *sc)
{
	uint32_t id_rev, dev_id, rev;

	id_rev = FUNC0(sc, 0);
	dev_id = id_rev >> 16;
	rev = id_rev & 0xFFFF;
	if (dev_id == MGB_LAN7430_DEVICE_ID ||
	    dev_id == MGB_LAN7431_DEVICE_ID) {
		return 0;
	} else {
		FUNC1(sc->dev, "ID check failed.\n");
		return ENXIO;
	}
}
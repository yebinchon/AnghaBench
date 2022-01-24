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
struct hn_softc {scalar_t__ hn_nvs_ver; int /*<<< orphan*/  hn_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  HN_CAP_UDPHASH ; 
 scalar_t__ HN_NVS_VERSION_2 ; 
 int FUNC0 (struct hn_softc*,int) ; 
 int FUNC1 (struct hn_softc*) ; 
 int FUNC2 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*) ; 
 int FUNC4 (struct hn_softc*) ; 
 int FUNC5 (struct hn_softc*) ; 
 int hyperv_ver_major ; 

int
FUNC6(struct hn_softc *sc, int mtu)
{
	int error;

	if (hyperv_ver_major >= 10) {
		/* UDP 4-tuple hash is enforced. */
		sc->hn_caps |= HN_CAP_UDPHASH;
	}

	/*
	 * Initialize NVS.
	 */
	error = FUNC4(sc);
	if (error)
		return (error);

	if (sc->hn_nvs_ver >= HN_NVS_VERSION_2) {
		/*
		 * Configure NDIS before initializing it.
		 */
		error = FUNC0(sc, mtu);
		if (error)
			return (error);
	}

	/*
	 * Initialize NDIS.
	 */
	error = FUNC5(sc);
	if (error)
		return (error);

	/*
	 * Connect RXBUF.
	 */
	error = FUNC2(sc);
	if (error)
		return (error);

	/*
	 * Connect chimney sending buffer.
	 */
	error = FUNC1(sc);
	if (error) {
		FUNC3(sc);
		return (error);
	}
	return (0);
}
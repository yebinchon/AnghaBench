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
typedef  int /*<<< orphan*/  uint8_t ;
struct hn_softc {int /*<<< orphan*/  hn_ifp; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  OID_802_3_PERMANENT_ADDRESS ; 
 int FUNC0 (struct hn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 

int
FUNC2(struct hn_softc *sc, uint8_t *eaddr)
{
	size_t eaddr_len;
	int error;

	eaddr_len = ETHER_ADDR_LEN;
	error = FUNC0(sc, OID_802_3_PERMANENT_ADDRESS, NULL, 0,
	    eaddr, &eaddr_len);
	if (error)
		return (error);
	if (eaddr_len != ETHER_ADDR_LEN) {
		FUNC1(sc->hn_ifp, "invalid eaddr len %zu\n", eaddr_len);
		return (EINVAL);
	}
	return (0);
}
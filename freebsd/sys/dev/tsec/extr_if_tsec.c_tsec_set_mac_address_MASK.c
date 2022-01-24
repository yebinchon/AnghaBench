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
struct tsec_softc {int /*<<< orphan*/  tsec_ifp; } ;
typedef  int /*<<< orphan*/  macbuf ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*) ; 
 int /*<<< orphan*/  TSEC_REG_MACSTNADDR1 ; 
 int /*<<< orphan*/  TSEC_REG_MACSTNADDR2 ; 
 int /*<<< orphan*/  FUNC3 (struct tsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct tsec_softc *sc)
{
	uint32_t macbuf[2] = { 0, 0 };
	char *macbufp, *curmac;
	int i;

	FUNC2(sc);

	FUNC1((ETHER_ADDR_LEN <= sizeof(macbuf)),
	    ("tsec_set_mac_address: (%d <= %zd", ETHER_ADDR_LEN,
	    sizeof(macbuf)));

	macbufp = (char *)macbuf;
	curmac = (char *)FUNC0(sc->tsec_ifp);

	/* Correct order of MAC address bytes */
	for (i = 1; i <= ETHER_ADDR_LEN; i++)
		macbufp[ETHER_ADDR_LEN-i] = curmac[i-1];

	/* Initialize MAC station address MACSTNADDR2 and MACSTNADDR1 */
	FUNC3(sc, TSEC_REG_MACSTNADDR2, macbuf[1]);
	FUNC3(sc, TSEC_REG_MACSTNADDR1, macbuf[0]);
}
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
struct tsec_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETHER_CRC_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*) ; 
 unsigned int TSEC_MAX_FRAME_SIZE ; 
 unsigned int TSEC_MIN_FRAME_SIZE ; 
 int /*<<< orphan*/  TSEC_REG_MAXFRM ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC2(struct tsec_softc *sc, unsigned int mtu)
{

	mtu += ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN + ETHER_CRC_LEN;

	FUNC0(sc);

	if (mtu >= TSEC_MIN_FRAME_SIZE && mtu <= TSEC_MAX_FRAME_SIZE) {
		FUNC1(sc, TSEC_REG_MAXFRM, mtu);
		return (mtu);
	}

	return (0);
}
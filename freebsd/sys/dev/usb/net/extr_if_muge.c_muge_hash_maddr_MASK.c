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
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;
struct muge_softc {int* sc_mchash_table; int /*<<< orphan*/  sc_rfe_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_RFE_CTL_MCAST_HASH_ ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct muge_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC3(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct muge_softc *sc = arg;
	uint32_t bitnum;

	/* First fill up the perfect address table. */
	if (cnt < 32 /* XXX */)
		FUNC2(sc, cnt + 1, FUNC0(sdl));
	else {
		bitnum = FUNC1(FUNC0(sdl));
		sc->sc_mchash_table[bitnum / 32] |= (1 << (bitnum % 32));
		sc->sc_rfe_ctl |= ETH_RFE_CTL_MCAST_HASH_;
	}

	return (1);
}
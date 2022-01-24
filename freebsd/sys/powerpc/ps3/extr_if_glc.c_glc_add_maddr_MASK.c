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
typedef  scalar_t__ uint64_t ;
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;
struct glc_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC3(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct glc_softc *sc = arg;
	uint64_t addr;

	/*
	 * Filter can only hold 32 addresses, so fall back to
	 * the IFF_ALLMULTI case if we have too many. +1 is for
	 * broadcast.
	 */
	if (cnt + 1 == 32)
		return (0);

	addr = 0;
	FUNC2(&((uint8_t *)(&addr))[2], FUNC0(sdl), ETHER_ADDR_LEN);
	FUNC1(sc->sc_bus, sc->sc_dev, addr, 0);

	return (1);
}
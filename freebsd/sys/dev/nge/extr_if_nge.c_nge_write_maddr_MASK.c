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
struct nge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nge_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 scalar_t__ NGE_FILTADDR_MCAST_LO ; 
 int /*<<< orphan*/  NGE_RXFILT_CTL ; 
 int /*<<< orphan*/  NGE_RXFILT_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct nge_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC4(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct nge_softc *sc = arg;
	uint32_t h;
	int bit, index;

	/*
	 * From the 11 bits returned by the crc routine, the top 7
	 * bits represent the 16-bit word in the mcast hash table
	 * that needs to be updated, and the lower 4 bits represent
	 * which bit within that byte needs to be set.
	 */
	h = FUNC3(FUNC1(sdl), ETHER_ADDR_LEN) >> 21;
	index = (h >> 4) & 0x7F;
	bit = h & 0xF;
	FUNC0(sc, NGE_RXFILT_CTL, NGE_FILTADDR_MCAST_LO + (index * 2));
	FUNC2(sc, NGE_RXFILT_DATA, (1 << bit));

	return (1);
}
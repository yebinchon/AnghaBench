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
struct sis_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sis_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 scalar_t__ NS_FILTADDR_FMEM_LO ; 
 int /*<<< orphan*/  SIS_RXFILT_CTL ; 
 int /*<<< orphan*/  SIS_RXFILT_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct sis_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sis_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC4(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct sis_softc *sc = arg;
	uint32_t h;
	int bit, index;

	h = FUNC3(sc, FUNC1(sdl));
	index = h >> 3;
	bit = h & 0x1F;
	FUNC0(sc, SIS_RXFILT_CTL, NS_FILTADDR_FMEM_LO + index);
	if (bit > 0xF)
		bit -= 0x10;
	FUNC2(sc, SIS_RXFILT_DATA, (1 << bit));

	return (1);
}
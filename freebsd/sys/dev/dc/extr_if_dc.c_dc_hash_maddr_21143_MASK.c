#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dc_sbuf; } ;
struct dc_softc {TYPE_1__ dc_cdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int FUNC1 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u_int
FUNC3(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct dc_softc *sc = arg;
	uint32_t h;

	h = FUNC1(sc, FUNC0(sdl));
	sc->dc_cdata.dc_sbuf[h >> 4] |= FUNC2(1 << (h & 0xF));

	return (1);
}
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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct xae_softc {int dummy; } ;
struct sockaddr_dl {int dummy; } ;

/* Variables and functions */
 int* FUNC0 (struct sockaddr_dl*) ; 
 int FUNC1 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xae_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XAE_FFC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int XAE_MULTICAST_TABLE_SIZE ; 

__attribute__((used)) static u_int
FUNC4(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct xae_softc *sc = arg;
	uint32_t reg;
	uint8_t *ma;

	if (cnt >= XAE_MULTICAST_TABLE_SIZE)
		return (1);

	ma = FUNC0(sdl);

	reg = FUNC1(sc, XAE_FFC) & 0xffffff00;
	reg |= cnt;
	FUNC2(sc, XAE_FFC, reg);

	reg = (ma[0]);
	reg |= (ma[1] << 8);
	reg |= (ma[2] << 16);
	reg |= (ma[3] << 24);
	FUNC2(sc, FUNC3(0), reg);

	reg = ma[4];
	reg |= ma[5] << 8;
	FUNC2(sc, FUNC3(1), reg);

	return (1);
}
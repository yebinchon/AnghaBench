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
struct lance_softc {int dummy; } ;
struct lance_hash_maddr_ctx {int /*<<< orphan*/ * af; struct lance_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC3(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
	struct lance_hash_maddr_ctx *ctx = arg;
	struct lance_softc *sc = ctx->sc;
	uint32_t crc;

	crc = FUNC2(FUNC1(sdl), ETHER_ADDR_LEN);
	/* Just want the 6 most significant bits. */
	crc >>= 26;
	/* Set the corresponding bit in the filter. */
	ctx->af[crc >> 4] |= FUNC0(1 << (crc & 0xf));

	return (1);
}
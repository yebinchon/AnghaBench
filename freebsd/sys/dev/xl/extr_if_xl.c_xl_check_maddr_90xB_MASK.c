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
typedef  int uint16_t ;
typedef  int u_int ;
struct xl_softc {int dummy; } ;
struct sockaddr_dl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_dl*) ; 
 int XL_CMD_RX_SET_HASH ; 
 int /*<<< orphan*/  XL_COMMAND ; 
 int XL_HASH_SET ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC3(void *arg, struct sockaddr_dl *sdl, u_int count)
{
	struct xl_softc *sc = arg;
	uint16_t h;

	h = FUNC2(FUNC1(sdl), ETHER_ADDR_LEN) & 0xFF;
	FUNC0(sc, XL_COMMAND, h | XL_CMD_RX_SET_HASH | XL_HASH_SET);

	return (1);
}
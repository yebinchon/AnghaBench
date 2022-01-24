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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int ;
struct ti_softc {int ti_hwrev; int /*<<< orphan*/  ti_dev; } ;
struct ti_cmd_desc {int dummy; } ;
struct sockaddr_dl {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  TI_CMD_DEL_MCAST_ADDR ; 
 int /*<<< orphan*/  TI_CMD_EXT_DEL_MCAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TI_GCR_MAR0 ; 
 int /*<<< orphan*/  TI_GCR_MAR1 ; 
#define  TI_HWREV_TIGON 129 
#define  TI_HWREV_TIGON_II 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC6(void *arg, struct sockaddr_dl *sdl, u_int count)
{
	struct ti_softc *sc = arg;
	struct ti_cmd_desc cmd;
	uint16_t *m;
	uint32_t ext[2] = {0, 0};

	m = (uint16_t *)FUNC1(sdl);

	switch (sc->ti_hwrev) {
	case TI_HWREV_TIGON:
		FUNC0(sc, TI_GCR_MAR0, FUNC5(m[0]));
		FUNC0(sc, TI_GCR_MAR1, (FUNC5(m[1]) << 16) | FUNC5(m[2]));
		FUNC2(TI_CMD_DEL_MCAST_ADDR, 0, 0);
		break;
	case TI_HWREV_TIGON_II:
		ext[0] = FUNC5(m[0]);
		ext[1] = (FUNC5(m[1]) << 16) | FUNC5(m[2]);
		FUNC3(TI_CMD_EXT_DEL_MCAST, 0, 0, (caddr_t)&ext, 2);
		break;
	default:
		FUNC4(sc->ti_dev, "unknown hwrev\n");
		return (0);
	}

	return (1);
}
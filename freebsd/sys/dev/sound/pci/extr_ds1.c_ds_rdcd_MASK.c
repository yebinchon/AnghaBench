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
typedef  int u_int32_t ;
struct sc_info {int cd2id; int type; int rev; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_AC97CMDADR ; 
 int YDSXGR_PRISTATUSDATA ; 
 int YDSXGR_SECSTATUSDATA ; 
 int YDSXG_AC97READCMD ; 
 scalar_t__ FUNC0 (struct sc_info*,int) ; 
 int FUNC1 (struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(kobj_t obj, void *devinfo, int regno)
{
	struct sc_info *sc = (struct sc_info *)devinfo;
	int sec, cid, i;
	u_int32_t cmd, reg;

	sec = regno & 0x100;
	regno &= 0xff;
	cid = sec? (sc->cd2id << 8) : 0;
	reg = sec? YDSXGR_SECSTATUSDATA : YDSXGR_PRISTATUSDATA;
	if (sec && cid == 0)
		return 0xffffffff;

	cmd = YDSXG_AC97READCMD | cid | regno;
	FUNC2(sc, YDSXGR_AC97CMDADR, cmd, 2);

	if (FUNC0(sc, sec))
		return 0xffffffff;

	if (sc->type == 11 && sc->rev < 2)
		for (i = 0; i < 600; i++)
			FUNC1(sc, reg, 2);

	return FUNC1(sc, reg, 2);
}
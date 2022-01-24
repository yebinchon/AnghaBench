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
typedef  int u_int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct tr_info {int hwchns; int playchns; TYPE_1__ recchinfo; struct tr_chinfo* chinfo; } ;
struct tr_chinfo {int bufhalf; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int TR_INT_ADDR ; 
 int TR_INT_SB ; 
 int /*<<< orphan*/  TR_REG_ADDRINTA ; 
 int /*<<< orphan*/  TR_REG_ADDRINTB ; 
 int /*<<< orphan*/  TR_REG_CSPF_A ; 
 int /*<<< orphan*/  TR_REG_CSPF_B ; 
 int /*<<< orphan*/  TR_REG_MISCINT ; 
 int /*<<< orphan*/  TR_REG_SBR10 ; 
 int /*<<< orphan*/  TR_REG_SBR9 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tr_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tr_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(void *p)
{
	struct tr_info *tr = (struct tr_info *)p;
	struct tr_chinfo *ch;
	u_int32_t active, mask, bufhalf, chnum, intsrc;
	int tmp;

	intsrc = FUNC1(tr, TR_REG_MISCINT, 4);
	if (intsrc & TR_INT_ADDR) {
		chnum = 0;
		while (chnum < tr->hwchns) {
			mask = 0x00000001;
			active = FUNC1(tr, (chnum < 32)? TR_REG_ADDRINTA : TR_REG_ADDRINTB, 4);
			bufhalf = FUNC1(tr, (chnum < 32)? TR_REG_CSPF_A : TR_REG_CSPF_B, 4);
			if (active) {
				do {
					if (active & mask) {
						tmp = (bufhalf & mask)? 1 : 0;
						if (chnum < tr->playchns) {
							ch = &tr->chinfo[chnum];
							/* printf("%d @ %d, ", chnum, trpchan_getptr(NULL, ch)); */
							if (ch->bufhalf != tmp) {
								FUNC0(ch->channel);
								ch->bufhalf = tmp;
							}
						}
					}
					chnum++;
					mask <<= 1;
				} while (chnum & 31);
			} else
				chnum += 32;

			FUNC2(tr, (chnum <= 32)? TR_REG_ADDRINTA : TR_REG_ADDRINTB, active, 4);
		}
	}
	if (intsrc & TR_INT_SB) {
		FUNC0(tr->recchinfo.channel);
		FUNC1(tr, TR_REG_SBR9, 1);
		FUNC1(tr, TR_REG_SBR10, 1);
	}
}
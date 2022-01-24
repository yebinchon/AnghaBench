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
struct sc_pchinfo {int fmt; int /*<<< orphan*/  spd; scalar_t__ rslot; scalar_t__ lslot; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int AFMT_16BIT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct sc_pchinfo *ch)
{
	int stereo, b16, c, sz;
	bus_addr_t addr;

	stereo = (FUNC0(ch->fmt) > 1)? 1 : 0;
	b16 = (ch->fmt & AFMT_16BIT)? 1 : 0;
	c = stereo? 1 : 0;
	addr = FUNC2(ch->buffer);
	sz = FUNC3(ch->buffer);

	FUNC1(ch->lslot, c, stereo, b16, ch->spd, addr, sz);
	FUNC1(ch->lslot + 1, c, stereo, b16, ch->spd, addr, sz);
	FUNC1(ch->rslot, 2, stereo, b16, ch->spd, addr, sz);
	FUNC1(ch->rslot + 1, 2, stereo, b16, ch->spd, addr, sz);
}
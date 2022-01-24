#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int va_crtc_addr; scalar_t__ va_unit; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int u_char ;
struct TYPE_6__ {scalar_t__ sig; int* regs; } ;
typedef  TYPE_2__ adp_state_t ;

/* Variables and functions */
 int ATC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int GDCIDX ; 
 int GDCREG ; 
 int MISC ; 
 int TSIDX ; 
 int TSREG ; 
 scalar_t__ V_ADP_PRIMARY ; 
 int /*<<< orphan*/  V_ADP_STATELOAD ; 
 int /*<<< orphan*/  V_MODE_PARAM_SIZE ; 
 scalar_t__ V_STATE_SIG ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int rows_offset ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(video_adapter_t *adp, void *p)
{
    u_char *buf;
    int crtc_addr;
    int s;
    int i;

    FUNC4(adp, V_ADP_STATELOAD, ENODEV);
    if (((adp_state_t *)p)->sig != V_STATE_SIG)
	return EINVAL;

    buf = ((adp_state_t *)p)->regs;
    crtc_addr = adp->va_crtc_addr;

#if VGA_DEBUG > 1
    dump_buffer(buf, V_MODE_PARAM_SIZE);
#endif

    s = FUNC5();

    FUNC3(TSIDX, 0x00); FUNC3(TSREG, 0x01);	/* stop sequencer */
    for (i = 0; i < 4; ++i) {			/* program sequencer */
	FUNC3(TSIDX, i + 1);
	FUNC3(TSREG, buf[i + 5]);
    }
    FUNC3(MISC, buf[9]);				/* set dot-clock */
    FUNC3(TSIDX, 0x00); FUNC3(TSREG, 0x03);	/* start sequencer */
    FUNC3(crtc_addr, 0x11);
    FUNC3(crtc_addr + 1, FUNC2(crtc_addr + 1) & 0x7F);
    for (i = 0; i < 25; ++i) {			/* program crtc */
	FUNC3(crtc_addr, i);
	FUNC3(crtc_addr + 1, buf[i + 10]);
    }
    FUNC2(crtc_addr+6);				/* reset flip-flop */
    for (i = 0; i < 20; ++i) {			/* program attribute ctrl */
	FUNC3(ATC, i);
	FUNC3(ATC, buf[i + 35]);
    }
    for (i = 0; i < 9; ++i) {			/* program graph data ctrl */
	FUNC3(GDCIDX, i);
	FUNC3(GDCREG, buf[i + 55]);
    }
    FUNC2(crtc_addr + 6);				/* reset flip-flop */
    FUNC3(ATC, 0x20);				/* enable palette */

#ifdef notyet /* a temporary workaround for kernel panic, XXX */
#ifndef VGA_NO_BIOS
    if (adp->va_unit == V_ADP_PRIMARY) {
	writeb(BIOS_PADDRTOVADDR(0x44a), buf[0]);	/* COLS */
	writeb(BIOS_PADDRTOVADDR(0x484), buf[1] + rows_offset - 1); /* ROWS */
	writeb(BIOS_PADDRTOVADDR(0x485), buf[2]);	/* POINTS */
#if 0
	writeb(BIOS_PADDRTOVADDR(0x44c), buf[3]);
	writeb(BIOS_PADDRTOVADDR(0x44d), buf[4]);
#endif
    }
#endif /* VGA_NO_BIOS */
#endif /* notyet */

    FUNC6(s);
    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int va_type; int /*<<< orphan*/  va_crtc_addr; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int u_char ;

/* Variables and functions */
 int ENODEV ; 
#define  KD_CGA 136 
#define  KD_EGA 135 
#define  KD_HERCULES 134 
#define  KD_MONO 133 
#define  KD_VGA 132 
 int /*<<< orphan*/  TSIDX ; 
 int /*<<< orphan*/  TSREG ; 
#define  V_DISPLAY_BLANK 131 
#define  V_DISPLAY_ON 130 
#define  V_DISPLAY_STAND_BY 129 
#define  V_DISPLAY_SUSPEND 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(video_adapter_t *adp, int mode)
{
    u_char val;
    int s;

    s = FUNC2();
    switch (adp->va_type) {
    case KD_VGA:
	switch (mode) {
	case V_DISPLAY_SUSPEND:
	case V_DISPLAY_STAND_BY:
	    FUNC1(TSIDX, 0x01);
	    val = FUNC0(TSREG);
	    FUNC1(TSIDX, 0x01);
	    FUNC1(TSREG, val | 0x20);
	    FUNC1(adp->va_crtc_addr, 0x17);
	    val = FUNC0(adp->va_crtc_addr + 1);
	    FUNC1(adp->va_crtc_addr + 1, val & ~0x80);
	    break;
	case V_DISPLAY_BLANK:
	    FUNC1(TSIDX, 0x01);
	    val = FUNC0(TSREG);
	    FUNC1(TSIDX, 0x01);
	    FUNC1(TSREG, val | 0x20);
	    break;
	case V_DISPLAY_ON:
	    FUNC1(TSIDX, 0x01);
	    val = FUNC0(TSREG);
	    FUNC1(TSIDX, 0x01);
	    FUNC1(TSREG, val & 0xDF);
	    FUNC1(adp->va_crtc_addr, 0x17);
	    val = FUNC0(adp->va_crtc_addr + 1);
	    FUNC1(adp->va_crtc_addr + 1, val | 0x80);
	    break;
	}
	break;

    case KD_EGA:
	/* no support yet */
	FUNC3(s);
	return ENODEV;

    case KD_CGA:
	switch (mode) {
	case V_DISPLAY_SUSPEND:
	case V_DISPLAY_STAND_BY:
	case V_DISPLAY_BLANK:
	    FUNC1(adp->va_crtc_addr + 4, 0x25);
	    break;
	case V_DISPLAY_ON:
	    FUNC1(adp->va_crtc_addr + 4, 0x2d);
	    break;
	}
	break;

    case KD_MONO:
    case KD_HERCULES:
	switch (mode) {
	case V_DISPLAY_SUSPEND:
	case V_DISPLAY_STAND_BY:
	case V_DISPLAY_BLANK:
	    FUNC1(adp->va_crtc_addr + 4, 0x21);
	    break;
	case V_DISPLAY_ON:
	    FUNC1(adp->va_crtc_addr + 4, 0x29);
	    break;
	}
	break;
    default:
	break;
    }
    FUNC3(s);

    return 0;
}
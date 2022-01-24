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

/* Variables and functions */
 int ENXIO ; 
#define  KD_CGA 132 
#define  KD_EGA 131 
#define  KD_HERCULES 130 
#define  KD_MONO 129 
#define  KD_VGA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  vga_init_done ; 

__attribute__((used)) static int
FUNC3(video_adapter_t *adp, int base, int height,
			int celsize, int blink)
{
    int s;

    if (!vga_init_done)
	return ENXIO;

    s = FUNC1();
    switch (adp->va_type) {
    case KD_VGA:
    case KD_CGA:
    case KD_MONO:
    case KD_HERCULES:
    default:
	if (height <= 0) {
	    /* make the cursor invisible */
	    FUNC0(adp->va_crtc_addr, 10);
	    FUNC0(adp->va_crtc_addr + 1, 32);
	    FUNC0(adp->va_crtc_addr, 11);
	    FUNC0(adp->va_crtc_addr + 1, 0);
	} else {
	    FUNC0(adp->va_crtc_addr, 10);
	    FUNC0(adp->va_crtc_addr + 1, celsize - base - height);
	    FUNC0(adp->va_crtc_addr, 11);
	    FUNC0(adp->va_crtc_addr + 1, celsize - base - 1);
	}
	break;
    case KD_EGA:
	if (height <= 0) {
	    /* make the cursor invisible */
	    FUNC0(adp->va_crtc_addr, 10);
	    FUNC0(adp->va_crtc_addr + 1, celsize);
	    FUNC0(adp->va_crtc_addr, 11);
	    FUNC0(adp->va_crtc_addr + 1, 0);
	} else {
	    FUNC0(adp->va_crtc_addr, 10);
	    FUNC0(adp->va_crtc_addr + 1, celsize - base - height);
	    FUNC0(adp->va_crtc_addr, 11);
	    FUNC0(adp->va_crtc_addr + 1, celsize - base);
	}
	break;
    }
    FUNC2(s);

    return 0;
}
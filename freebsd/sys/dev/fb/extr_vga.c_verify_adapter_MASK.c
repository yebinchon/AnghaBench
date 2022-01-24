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
typedef  scalar_t__ vm_offset_t ;
struct TYPE_3__ {int va_window; int va_type; char* va_name; int va_flags; int /*<<< orphan*/  va_crtc_addr; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int u_int32_t ;
typedef  int u_int16_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
#define  KD_CGA 130 
#define  KD_EGA 129 
#define  KD_MONO 128 
 int KD_VGA ; 
 int V_ADP_BORDER ; 
 int V_ADP_COLOR ; 
 int V_ADP_PALETTE ; 
 int V_ADP_STATELOAD ; 
 int V_ADP_STATESAVE ; 
 int V_MODE_PARAM_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * video_mode_ptr ; 
 int /*<<< orphan*/ * video_mode_ptr2 ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC7(video_adapter_t *adp)
{
    vm_offset_t buf;
    u_int16_t v;
#if !defined(VGA_NO_BIOS) && !defined(VGA_NO_MODE_CHANGE)
    u_int32_t p;
#endif

    buf = FUNC0(adp->va_window);
    v = FUNC5(buf);
    FUNC6(buf, 0xA55A);
    if (FUNC5(buf) != 0xA55A)
	return ENXIO;
    FUNC6(buf, v);

    switch (adp->va_type) {

    case KD_EGA:
	FUNC4(adp->va_crtc_addr, 7);
	if (FUNC3(adp->va_crtc_addr) == 7) {
	    adp->va_type = KD_VGA;
	    adp->va_name = "vga";
	    adp->va_flags |= V_ADP_STATESAVE | V_ADP_PALETTE;
	}
	adp->va_flags |= V_ADP_STATELOAD | V_ADP_BORDER;
	/* the color adapter may be in the 40x25 mode... XXX */

#if !defined(VGA_NO_BIOS) && !defined(VGA_NO_MODE_CHANGE)
	/* get the BIOS video mode pointer */
	p = *(u_int32_t *)FUNC0(0x4a8);
	p = FUNC1(p);
	if (FUNC2(p, sizeof(u_int32_t))) {
	    p = *(u_int32_t *)FUNC0(p);
	    p = FUNC1(p);
	    if (FUNC2(p, V_MODE_PARAM_SIZE))
		video_mode_ptr = (u_char *)FUNC0(p);
	}
#endif
	break;

    case KD_CGA:
	adp->va_flags |= V_ADP_COLOR | V_ADP_BORDER;
	/* may be in the 40x25 mode... XXX */
#if !defined(VGA_NO_BIOS) && !defined(VGA_NO_MODE_CHANGE)
	/* get the BIOS video mode pointer */
	p = *(u_int32_t *)FUNC0(0x1d*4);
	p = FUNC1(p);
	video_mode_ptr2 = (u_char *)FUNC0(p);
#endif
	break;

    case KD_MONO:
#if !defined(VGA_NO_BIOS) && !defined(VGA_NO_MODE_CHANGE)
	/* get the BIOS video mode pointer */
	p = *(u_int32_t *)FUNC0(0x1d*4);
	p = FUNC1(p);
	video_mode_ptr2 = (u_char *)FUNC0(p);
#endif
	break;
    }

    return 0;
}
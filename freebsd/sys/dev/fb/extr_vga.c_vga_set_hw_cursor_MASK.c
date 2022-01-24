#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int vi_flags; int vi_width; } ;
struct TYPE_5__ {scalar_t__ va_crtc_addr; TYPE_1__ va_info; } ;
typedef  TYPE_2__ video_adapter_t ;
typedef  int u_int16_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int V_INFO_GRAPHICS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  vga_init_done ; 

__attribute__((used)) static int
FUNC3(video_adapter_t *adp, int col, int row)
{
    u_int16_t off;
    int s;

    if (!vga_init_done)
	return ENXIO;

    if ((col == -1) && (row == -1)) {
	off = -1;
    } else {
	if (adp->va_info.vi_flags & V_INFO_GRAPHICS)
	    return ENODEV;
	off = row*adp->va_info.vi_width + col;
    }

    s = FUNC1();
    FUNC0(adp->va_crtc_addr, 14);
    FUNC0(adp->va_crtc_addr + 1, off >> 8);
    FUNC0(adp->va_crtc_addr, 15);
    FUNC0(adp->va_crtc_addr + 1, off & 0x00ff);
    FUNC2(s);

    return 0;
}
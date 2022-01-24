#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int vi_flags; int vi_depth; int vi_planes; int vi_cheight; } ;
struct TYPE_7__ {scalar_t__ va_type; int va_line_width; TYPE_2__ va_disp_start; scalar_t__ va_crtc_addr; TYPE_1__ va_info; } ;
typedef  TYPE_3__ video_adapter_t ;

/* Variables and functions */
 scalar_t__ ATC ; 
 scalar_t__ KD_EGA ; 
 scalar_t__ KD_VGA ; 
 scalar_t__ TSIDX ; 
 scalar_t__ TSREG ; 
 int V_INFO_GRAPHICS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC2(video_adapter_t *adp, int x, int y)
{
    int off;	/* byte offset (graphics mode)/word offset (text mode) */
    int poff;	/* pixel offset */
    int roff;	/* row offset */
    int ppb;	/* pixels per byte */

    if ((adp->va_type != KD_VGA) && (adp->va_type != KD_EGA))
	x &= ~7;
    if (adp->va_info.vi_flags & V_INFO_GRAPHICS) {
	ppb = 8/(adp->va_info.vi_depth/adp->va_info.vi_planes);
	off = y*adp->va_line_width + x/ppb;
	roff = 0;
	poff = x%ppb;
    } else {
	if ((adp->va_type == KD_VGA) || (adp->va_type == KD_EGA)) {
	    FUNC1(TSIDX, 1);
	    if (FUNC0(TSREG) & 1)
		ppb = 9;
	    else
		ppb = 8;
	} else {
	    ppb = 8;
	}
	off = y/adp->va_info.vi_cheight*adp->va_line_width + x/ppb;
	roff = y%adp->va_info.vi_cheight;
	/* FIXME: is this correct? XXX */
	if (ppb == 8)
	    poff = x%ppb;
	else
	    poff = (x + 8)%ppb;
    }

    /* start address */
    FUNC1(adp->va_crtc_addr, 0xc);		/* high */
    FUNC1(adp->va_crtc_addr + 1, off >> 8);
    FUNC1(adp->va_crtc_addr, 0xd);		/* low */
    FUNC1(adp->va_crtc_addr + 1, off & 0xff);

    /* horizontal pel pan */
    if ((adp->va_type == KD_VGA) || (adp->va_type == KD_EGA)) {
	FUNC0(adp->va_crtc_addr + 6);
	FUNC1(ATC, 0x13 | 0x20);
	FUNC1(ATC, poff);
	FUNC0(adp->va_crtc_addr + 6);
	FUNC1(ATC, 0x20);
    }

    /* preset raw scan */
    FUNC1(adp->va_crtc_addr, 8);
    FUNC1(adp->va_crtc_addr + 1, roff);

    adp->va_disp_start.x = x;
    adp->va_disp_start.y = y;
    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int va_window_size; int va_line_width; scalar_t__ va_window; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int u_char ;

/* Variables and functions */
 int MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int banksize ; 
 scalar_t__ blanked ; 
 int bpsl ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  rain_pal ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 () ; 
 int scrh ; 
 int /*<<< orphan*/  scrmode ; 
 int scrw ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int* vid ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(video_adapter_t *adp, int blank)
{
	int i, j, o, p, pl;
	u_char temp;
	int last_origin = -1;

	if (blank) {
		/* switch to graphics mode */
		if (blanked <= 0) {
			pl = FUNC4();
			FUNC8(adp, scrmode);
			FUNC6(adp, rain_pal);
			FUNC7(adp, 0);
			blanked++;
			vid = (u_char *)adp->va_window;
			banksize = adp->va_window_size;
			bpsl = adp->va_line_width;
			FUNC5(pl);
			for (i = 0; i < bpsl*scrh; i += banksize) {
				FUNC0(adp, i);
				if ((bpsl * scrh - i) < banksize)
					FUNC1(vid, bpsl * scrh - i);
				else
					FUNC1(vid, banksize);
			}
			FUNC0(adp, 0);
			for (i = 0, o = 0, p = 0; i < scrw; i += 2, p += 2) {
				if (p > banksize) {
					p -= banksize;
					o += banksize;
					FUNC0(adp, o);
				}
				vid[p] = 1 + (FUNC3() % MAX);
			}
			o = 0; p = 0;
			for (j = 1; j < scrh; j++)
			  for (i = 0, p = bpsl * (j - 1) - o; i < scrw; i += 2, p+= 2) {
			  	while (p > banksize) {
					p -= banksize;
					o += banksize;
				}
				FUNC0(adp, o);
				temp = (vid[p] < MAX) ? 1 + vid[p] : 1;
				if (p + bpsl < banksize) {
					vid[p + bpsl] = temp;
				} else {
					FUNC0(adp, o + banksize);
					vid[p + bpsl - banksize] = temp;
				}
			  }
		}
		
		/* update display */
		FUNC2(adp);
	} else {
		blanked = 0;
	}
	return (0);
}
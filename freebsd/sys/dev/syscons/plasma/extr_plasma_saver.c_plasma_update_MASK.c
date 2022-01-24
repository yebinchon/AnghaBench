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
typedef  int /*<<< orphan*/  video_adapter_t ;
typedef  int fp16_t ;
struct TYPE_2__ {unsigned int x; unsigned int y; unsigned int vx; unsigned int vy; } ;

/* Variables and functions */
 unsigned int FOCI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 unsigned int banksize ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* plasma_foci ; 
 unsigned int scrh ; 
 unsigned int scrw ; 
 int /*<<< orphan*/ * vid ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC9(video_adapter_t *adp)
{
	unsigned int x, y;	/* coordinates */
	signed int dx, dy;	/* horizontal / vertical distance */
	fp16_t sqd, d;		/* square of distance and distance */
	fp16_t m;		/* magnitude */
	unsigned int org, off;	/* origin and offset */
	unsigned int i;		/* loop index */

	/* switch to bank 0 */
	FUNC8(adp, 0);
	/* for each scan line */
	for (y = org = off = 0; y < scrh; ++y) {
		/* for each pixel on scan line */
		for (x = 0; x < scrw; ++x, ++off) {
			/* for each focus */
			for (i = m = 0; i < FOCI; ++i) {
				dx = x - plasma_foci[i].x;
				dy = y - plasma_foci[i].y;
				sqd = FUNC1(dx * dx + dy * dy);
				d = FUNC6(sqd);
				/* divide by 4 to stretch out the pattern */
				m = FUNC7(m, FUNC3(d / 4));
			}
			/*
			 * m is now in the range +/- FOCI, but we need a
			 * value between 0 and 255.  We scale to +/- 127
			 * and add 127, which moves it into the range [0,
			 * 254].
			 */
			m = FUNC5(m, FUNC1(127));
			m = FUNC4(m, FUNC1(FOCI));
			m = FUNC2(m, FUNC1(127));
			/* switch banks if necessary */
			if (off > banksize) {
				off -= banksize;
				org += banksize;
				FUNC8(adp, org);
			}
			/* plot */
			vid[off] = FUNC0(m);
		}
	}
	/* now move the foci */
	for (i = 0; i < FOCI; ++i) {
		plasma_foci[i].x += plasma_foci[i].vx;
		if (plasma_foci[i].x < 0) {
			/* bounce against left wall */
			plasma_foci[i].vx = -plasma_foci[i].vx;
			plasma_foci[i].x = -plasma_foci[i].x;
		} else if (plasma_foci[i].x >= scrw) {
			/* bounce against right wall */
			plasma_foci[i].vx = -plasma_foci[i].vx;
			plasma_foci[i].x = scrw - (plasma_foci[i].x - scrw);
		}
		plasma_foci[i].y += plasma_foci[i].vy;
		if (plasma_foci[i].y < 0) {
			/* bounce against ceiling */
			plasma_foci[i].vy = -plasma_foci[i].vy;
			plasma_foci[i].y = -plasma_foci[i].y;
		} else if (plasma_foci[i].y >= scrh) {
			/* bounce against floor */
			plasma_foci[i].vy = -plasma_foci[i].vy;
			plasma_foci[i].y = scrh - (plasma_foci[i].y - scrh);
		}
	}
}
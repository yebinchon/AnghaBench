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
struct TYPE_3__ {int vi_width; int vi_height; } ;
typedef  TYPE_1__ video_info_t ;
typedef  int /*<<< orphan*/  video_adapter_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int ENODEV ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_VGA_CG320 ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  SAVER_NAME ; 
 int /*<<< orphan*/ * buf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int* fire_pal ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int scrh ; 
 int /*<<< orphan*/  scrmode ; 
 int scrw ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(video_adapter_t *adp)
{
	video_info_t info;
	int i, red, green, blue;

	if (!FUNC6(adp, M_VGA_CG320, &info)) {
		scrmode = M_VGA_CG320;
	} else {
		FUNC4(LOG_NOTICE,
		    "%s: the console does not support M_VGA_CG320\n",
		    SAVER_NAME);
		return (ENODEV);
	}
    
	scrw = info.vi_width;
	scrh = info.vi_height;

	buf = (u_char *)FUNC5(scrw * (scrh + 1), M_DEVBUF, M_NOWAIT);
	if (buf) {
		FUNC3(buf, scrw * (scrh + 1));
	} else {
		FUNC4(LOG_NOTICE,
		    "%s: buffer allocation is failed\n",
		    SAVER_NAME);
		return (ENODEV);
	}

	/* intialize the palette */
	red = green = blue = 0;
	for (i = 0; i < 256; i++) {
		red++;
		if (red > 128)
			green += 2;
		fire_pal[FUNC2(i)] = red;
		fire_pal[FUNC1(i)] = green;
		fire_pal[FUNC0(i)] = blue;
	}

	return (0);
}
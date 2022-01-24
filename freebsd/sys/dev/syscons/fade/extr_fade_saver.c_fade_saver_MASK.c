#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  va_flags; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_DISPLAY_BLANK ; 
 int /*<<< orphan*/  V_DISPLAY_ON ; 
 int* palette ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*) ; 

__attribute__((used)) static int
FUNC4(video_adapter_t *adp, int blank)
{
	static int count = 0;
	u_char pal[256*3];
	int i;

	if (blank) {
		if (FUNC0(adp->va_flags)) {
			if (count <= 0)
				FUNC3(adp, palette);
			if (count < 256) {
				pal[0] = pal[1] = pal[2] = 0;
				for (i = 3; i < 256*3; i++) {
					if (palette[i] - count > 60)
						pal[i] = palette[i] - count;
					else
						pal[i] = 60;
				}
				FUNC2(adp, pal);
				count++;
			}
		} else {
	    		FUNC1(adp, V_DISPLAY_BLANK);
		}
	} else {
		if (FUNC0(adp->va_flags)) {
			FUNC2(adp, palette);
			count = 0;
		} else {
	    		FUNC1(adp, V_DISPLAY_ON);
		}
	}
	return 0;
}
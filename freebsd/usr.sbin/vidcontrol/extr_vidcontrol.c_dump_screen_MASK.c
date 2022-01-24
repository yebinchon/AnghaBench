#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; int xsize; int mv_csz; int ysize; int mv_rsz; int* buf; scalar_t__ mv_hsz; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ vid_info_t ;
typedef  int u_int16_t ;
typedef  TYPE_1__ scrshot_t ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_GETINFO ; 
 int /*<<< orphan*/  CONS_SCRSHOT ; 
 int DUMP_ALL ; 
 int DUMP_FMT_RAW ; 
 int DUMP_FMT_REV ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC10(int mode, int opt)
{
	scrshot_t shot;
	vid_info_t info;

	info.size = sizeof(info);
	if (FUNC4(0, CONS_GETINFO, &info) == -1) {
		FUNC8();
		FUNC1(1, "getting console information");
	}

	shot.x = shot.y = 0;
	shot.xsize = info.mv_csz;
	shot.ysize = info.mv_rsz;
	if (opt == DUMP_ALL)
		shot.ysize += info.mv_hsz;

	shot.buf = FUNC0(shot.xsize * shot.ysize * sizeof(u_int16_t));
	if (shot.buf == NULL) {
		FUNC8();
		FUNC2(1, "failed to allocate memory for dump");
	}

	if (FUNC4(0, CONS_SCRSHOT, &shot) == -1) {
		FUNC8();
		FUNC1(1, "dumping screen");
	}

	if (mode == DUMP_FMT_RAW) {
		FUNC6("SCRSHOT_%c%c%c%c", DUMP_FMT_REV, 2,
		       shot.xsize, shot.ysize);

		FUNC3(stdout);

		FUNC9(STDOUT_FILENO, shot.buf,
		      shot.xsize * shot.ysize * sizeof(u_int16_t));
	} else {
		char *line;
		int x, y;
		u_int16_t ch;

		line = FUNC0(shot.xsize + 1);

		if (line == NULL) {
			FUNC8();
			FUNC2(1, "failed to allocate memory for line buffer");
		}

		for (y = 0; y < shot.ysize; y++) {
			for (x = 0; x < shot.xsize; x++) {
				ch = shot.buf[x + (y * shot.xsize)];
				ch &= 0xff;

				if (FUNC5(ch) == 0)
					ch = ' ';

				line[x] = (char)ch;
			}

			/* Trim trailing spaces */

			do {
				line[x--] = '\0';
			} while (line[x] == ' ' && x != 0);

			FUNC7(line);
		}

		FUNC3(stdout);
	}
}
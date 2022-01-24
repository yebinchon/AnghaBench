#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CONS_BELLTYPE ; 
 int CONS_QUIET_BELL ; 
 int CONS_VISUAL_BELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(char *opt)
{
	int bell, duration, pitch;

	bell = 0;
	duration = 0;
	pitch = 0;
	if (!FUNC3(opt, "quiet.", 6)) {
		bell = CONS_QUIET_BELL;
		opt += 6;
	}
	if (!FUNC2(opt, "visual"))
		bell |= CONS_VISUAL_BELL;
	else if (!FUNC2(opt, "normal"))
		duration = 5, pitch = 800;
	else if (!FUNC2(opt, "off"))
		duration = 0, pitch = 0;
	else {
		char		*v1;

		bell = 0;
		duration = FUNC4(opt, &v1, 0);
		if ((duration < 0) || (*v1 != '.'))
			goto badopt;
		opt = ++v1;
		pitch = FUNC4(opt, &v1, 0);
		if ((pitch < 0) || (*opt == '\0') || (*v1 != '\0')) {
badopt:
			FUNC5("argument to -b must be duration.pitch or [quiet.]visual|normal|off");
			return;
		}
		if (pitch != 0)
			pitch = 1193182 / pitch;	/* in Hz */
		duration /= 10;	/* in 10 m sec */
	}

	FUNC1(0, CONS_BELLTYPE, &bell);
	if (duration > 0 && pitch > 0)
		FUNC0(stderr, "\e[=%d;%dB", pitch, duration);
}
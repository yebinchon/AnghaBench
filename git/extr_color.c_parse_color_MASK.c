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
struct color {int value; void* type; int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 void* COLOR_256 ; 
 void* COLOR_ANSI ; 
 void* COLOR_NORMAL ; 
 void* COLOR_RGB ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int,char const* const) ; 
 long FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC4(struct color *out, const char *name, int len)
{
	/* Positions in array must match ANSI color codes */
	static const char * const color_names[] = {
		"black", "red", "green", "yellow",
		"blue", "magenta", "cyan", "white"
	};
	char *end;
	int i;
	long val;

	/* First try the special word "normal"... */
	if (FUNC2(name, len, "normal")) {
		out->type = COLOR_NORMAL;
		return 0;
	}

	/* Try a 24-bit RGB value */
	if (len == 7 && name[0] == '#') {
		if (!FUNC1(name + 1, &out->red) &&
		    !FUNC1(name + 3, &out->green) &&
		    !FUNC1(name + 5, &out->blue)) {
			out->type = COLOR_RGB;
			return 0;
		}
	}

	/* Then pick from our human-readable color names... */
	for (i = 0; i < FUNC0(color_names); i++) {
		if (FUNC2(name, len, color_names[i])) {
			out->type = COLOR_ANSI;
			out->value = i;
			return 0;
		}
	}

	/* And finally try a literal 256-color-mode number */
	val = FUNC3(name, &end, 10);
	if (end - name == len) {
		/*
		 * Allow "-1" as an alias for "normal", but other negative
		 * numbers are bogus.
		 */
		if (val < -1)
			; /* fall through to error */
		else if (val < 0) {
			out->type = COLOR_NORMAL;
			return 0;
		/* Rewrite low numbers as more-portable standard colors. */
		} else if (val < 8) {
			out->type = COLOR_ANSI;
			out->value = val;
			return 0;
		} else if (val < 256) {
			out->type = COLOR_256;
			out->value = val;
			return 0;
		}
	}

	return -1;
}
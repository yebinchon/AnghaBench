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
struct TYPE_4__ {int rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 int REG_NOMATCH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 int FUNC5 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(const char *nameline)
{
	/*
	 * We are only interested in epoch timestamp; any non-zero
	 * fraction cannot be one, hence "(\.0+)?" in the regexp below.
	 * For the same reason, the date must be either 1969-12-31 or
	 * 1970-01-01, and the seconds part must be "00".
	 */
	const char stamp_regexp[] =
		"^[0-2][0-9]:([0-5][0-9]):00(\\.0+)?"
		" "
		"([-+][0-2][0-9]:?[0-5][0-9])\n";
	const char *timestamp = NULL, *cp, *colon;
	static regex_t *stamp;
	regmatch_t m[10];
	int zoneoffset, epoch_hour, hour, minute;
	int status;

	for (cp = nameline; *cp != '\n'; cp++) {
		if (*cp == '\t')
			timestamp = cp + 1;
	}
	if (!timestamp)
		return 0;

	/*
	 * YYYY-MM-DD hh:mm:ss must be from either 1969-12-31
	 * (west of GMT) or 1970-01-01 (east of GMT)
	 */
	if (FUNC4(timestamp, "1969-12-31 ", &timestamp))
		epoch_hour = 24;
	else if (FUNC4(timestamp, "1970-01-01 ", &timestamp))
		epoch_hour = 0;
	else
		return 0;

	if (!stamp) {
		stamp = FUNC7(sizeof(*stamp));
		if (FUNC2(stamp, stamp_regexp, REG_EXTENDED)) {
			FUNC6(FUNC1("Cannot prepare timestamp regexp %s"),
				stamp_regexp);
			return 0;
		}
	}

	status = FUNC3(stamp, timestamp, FUNC0(m), m, 0);
	if (status) {
		if (status != REG_NOMATCH)
			FUNC6(FUNC1("regexec returned %d for input: %s"),
				status, timestamp);
		return 0;
	}

	hour = FUNC5(timestamp, NULL, 10);
	minute = FUNC5(timestamp + m[1].rm_so, NULL, 10);

	zoneoffset = FUNC5(timestamp + m[3].rm_so + 1, (char **) &colon, 10);
	if (*colon == ':')
		zoneoffset = zoneoffset * 60 + FUNC5(colon + 1, NULL, 10);
	else
		zoneoffset = (zoneoffset / 100) * 60 + (zoneoffset % 100);
	if (timestamp[m[3].rm_so] == '-')
		zoneoffset = -zoneoffset;

	return hour * 60 + minute - zoneoffset == epoch_hour * 60;
}
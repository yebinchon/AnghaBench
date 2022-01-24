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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FEEDEQ_GAIN_DIV ; 
 int FUNC0 (int,int) ; 
 int FEEDEQ_PREAMP_FMAX ; 
 int FEEDEQ_PREAMP_FMIN ; 
 int FEEDEQ_PREAMP_IMAX ; 
 int FEEDEQ_PREAMP_IMIN ; 
 int FEEDEQ_PREAMP_INVALID ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int,...) ; 
 int FUNC5 (char const*,char*,int*,int*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static int32_t
FUNC9(const char *s)
{
	int r, i, f;
	size_t len;
	char buf[32];

	FUNC3(buf, sizeof(buf));

	/* XXX kind of ugly, but works for now.. */

	r = FUNC5(s, "%d.%d", &i, &f);

	if (r == 1 && !(i < FEEDEQ_PREAMP_IMIN || i > FEEDEQ_PREAMP_IMAX)) {
		FUNC4(buf, sizeof(buf), "%c%d",
		    FUNC1(i), FUNC2(i));
		f = 0;
	} else if (r == 2 &&
	    !(i < FEEDEQ_PREAMP_IMIN || i > FEEDEQ_PREAMP_IMAX ||
	    f < FEEDEQ_PREAMP_FMIN || f > FEEDEQ_PREAMP_FMAX))
		FUNC4(buf, sizeof(buf), "%c%d.%d",
		    FUNC1(i), FUNC2(i), f);
	else
		return (FEEDEQ_PREAMP_INVALID);

	len = FUNC8(s);
	if (len > 2 && FUNC6(s + len - 2, "dB") == 0)
		FUNC7(buf, "dB", sizeof(buf));

	if (i == 0 && *s == '-')
		*buf = '-';

	if (FUNC6(buf + ((*s >= '0' && *s <= '9') ? 1 : 0), s) != 0)
		return (FEEDEQ_PREAMP_INVALID);

	while ((f / FEEDEQ_GAIN_DIV) > 0)
		f /= FEEDEQ_GAIN_DIV;

	return (((i < 0 || *buf == '-') ? -1 : 1) * FUNC0(i, f));
}
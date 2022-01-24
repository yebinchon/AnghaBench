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
 int EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 double FUNC1 (char const*,char**) ; 

__attribute__((used)) static double
FUNC2(const char *duration)
{
	double ret;
	char *end;

	ret = FUNC1(duration, &end);
	if (ret == 0 && end == duration)
		FUNC0(125, "invalid duration");

	if (end == NULL || *end == '\0')
		return (ret);

	if (end != NULL && *(end + 1) != '\0')
		FUNC0(EX_USAGE, "invalid duration");

	switch (*end) {
	case 's':
		break;
	case 'm':
		ret *= 60;
		break;
	case 'h':
		ret *= 60 * 60;
		break;
	case 'd':
		ret *= 60 * 60 * 24;
		break;
	default:
		FUNC0(125, "invalid duration");
	}

	if (ret < 0 || ret >= 100000000UL)
		FUNC0(125, "invalid duration");

	return (ret);
}
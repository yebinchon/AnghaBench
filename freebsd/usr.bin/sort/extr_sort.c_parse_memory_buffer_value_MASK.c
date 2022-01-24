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
 int /*<<< orphan*/  EINVAL ; 
 unsigned long long available_free_memory ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  optarg ; 
 unsigned long long FUNC1 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long long
FUNC4(const char *value)
{

	if (value == NULL)
		return (available_free_memory);
	else {
		char *endptr;
		unsigned long long membuf;

		endptr = NULL;
		errno = 0;
		membuf = FUNC1(value, &endptr, 10);

		if (errno != 0) {
			FUNC2("%s",FUNC0(4));
			membuf = available_free_memory;
		} else {
			switch (*endptr){
			case 'Y':
				membuf *= 1024;
				/* FALLTHROUGH */
			case 'Z':
				membuf *= 1024;
				/* FALLTHROUGH */
			case 'E':
				membuf *= 1024;
				/* FALLTHROUGH */
			case 'P':
				membuf *= 1024;
				/* FALLTHROUGH */
			case 'T':
				membuf *= 1024;
				/* FALLTHROUGH */
			case 'G':
				membuf *= 1024;
				/* FALLTHROUGH */
			case 'M':
				membuf *= 1024;
				/* FALLTHROUGH */
			case '\0':
			case 'K':
				membuf *= 1024;
				/* FALLTHROUGH */
			case 'b':
				break;
			case '%':
				membuf = (available_free_memory * membuf) /
				    100;
				break;
			default:
				FUNC3(EINVAL, "%s", optarg);
				membuf = available_free_memory;
			}
		}
		return (membuf);
	}
}
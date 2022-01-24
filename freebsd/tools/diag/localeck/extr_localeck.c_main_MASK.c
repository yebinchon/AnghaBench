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
struct TYPE_2__ {char* catname; int /*<<< orphan*/  catid; } ;

/* Variables and functions */
 int _LC_LAST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* locales ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(int argc, char *argv[])
{
	int i, result;
	const char *localename;

	if (argc != 2) {
		(void)FUNC1(stderr, "usage: localeck <locale_name>\n");
		FUNC0(1);
	}

	localename = argv[1];
	result = 0;

	for (i = 0; i < _LC_LAST; i++) {
		if (FUNC3(locales[i].catid, localename) == NULL) {
			FUNC2("setlocale(%s, %s) failed\n", locales[i].catname,
			    localename);
			result++;
		}
	}
	return (result);
}
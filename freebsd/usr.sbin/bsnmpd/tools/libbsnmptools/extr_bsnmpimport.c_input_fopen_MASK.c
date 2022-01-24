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
typedef  size_t u_int ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ ** paths ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int32_t
FUNC3(const char *fname)
{
	FILE *fp;
	u_int p;

	if (fname[0] == '/' || fname[0] == '.' || fname[0] == '~') {
		if ((fp = FUNC1(NULL, fname)) != NULL) {
			FUNC0(fp, NULL, fname);
			return (0);
		}

	} else {

		for (p = 0; paths[p] != NULL; p++)
			if ((fp = FUNC1(paths[p], fname)) != NULL) {
				FUNC0(fp, paths[p], fname);
				return (0);
			}
	}

	FUNC2("cannot open '%s'", fname);
	return (-1);
}
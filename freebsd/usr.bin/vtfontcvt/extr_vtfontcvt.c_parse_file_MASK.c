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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(const char *filename, unsigned int map_idx)
{
	FILE *fp;
	size_t len;
	int rv;

	fp = FUNC1(filename, "r");
	if (fp == NULL) {
		FUNC4(filename);
		return (1);
	}
	len = FUNC6(filename);
	if (len > 4 && FUNC5(filename + len - 4, ".hex") == 0)
		rv = FUNC3(fp, map_idx);
	else
		rv = FUNC2(fp, map_idx);
	FUNC0(fp);
	return (rv);
}
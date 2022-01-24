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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 

FILE *
FUNC3(const char *path, const char *mode)
{
	FILE *fp;

	FUNC0(path != NULL);

	fp = FUNC2(path, mode);
	if (fp == NULL)
		FUNC1(1, "%s", path);
	return (fp);
}
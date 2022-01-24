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
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(char *line, FILE *ofp)
{
	char result[BUFSIZ];

	if (FUNC1(line, result))
		FUNC0(ofp, "\"%s\\0\"\n", result);
}
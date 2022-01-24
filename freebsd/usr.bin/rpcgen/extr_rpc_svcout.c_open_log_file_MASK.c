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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  fout ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static void
FUNC2(const char *infile, const char *sp)
{
	char *s;

	s = FUNC1(infile, '.');
	if (s)
		*s = '\0';
	FUNC0(fout, "%sopenlog(\"%s\", LOG_PID, LOG_DAEMON);\n", sp, infile);
	if (s)
		*s = '.';
}
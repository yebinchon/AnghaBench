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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  compact_format ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,...) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct strbuf *display, char code,
			   const char *summary, const char *error,
			   const char *remote, const char *local,
			   int summary_width)
{
	int width = (summary_width + FUNC4(summary) - FUNC0(summary));

	FUNC3(display, "%c %-*s ", code, width, summary);
	if (!compact_format)
		FUNC2(display, remote, local);
	else
		FUNC1(display, remote, local);
	if (error)
		FUNC3(display, "  (%s)", error);
}
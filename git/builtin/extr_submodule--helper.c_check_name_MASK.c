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
struct strbuf {char const* buf; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static int FUNC4(int argc, const char **argv, const char *prefix)
{
	if (argc > 1) {
		while (*++argv) {
			if (FUNC0(*argv) < 0)
				return 1;
		}
	} else {
		struct strbuf buf = STRBUF_INIT;
		while (FUNC2(&buf, stdin) != EOF) {
			if (!FUNC0(buf.buf))
				FUNC1("%s\n", buf.buf);
		}
		FUNC3(&buf);
	}
	return 0;
}
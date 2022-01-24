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
struct strbuf {char* buf; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,unsigned int,int) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC6 (struct strbuf*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(const char *type, int no_filters, unsigned flags,
			     int literally)
{
	struct strbuf buf = STRBUF_INIT;
	struct strbuf unquoted = STRBUF_INIT;

	while (FUNC2(&buf, stdin) != EOF) {
		if (buf.buf[0] == '"') {
			FUNC4(&unquoted);
			if (FUNC6(&unquoted, buf.buf, NULL))
				FUNC0("line is badly quoted");
			FUNC5(&buf, &unquoted);
		}
		FUNC1(buf.buf, type, no_filters ? NULL : buf.buf, flags,
			    literally);
	}
	FUNC3(&buf);
	FUNC3(&unquoted);
}
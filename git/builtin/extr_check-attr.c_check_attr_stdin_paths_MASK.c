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
struct attr_check {int dummy; } ;
typedef  scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int /*<<< orphan*/ ) ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct attr_check*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ nul_term_line ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(const char *prefix,
				   struct attr_check *check,
				   int collect_all)
{
	struct strbuf buf = STRBUF_INIT;
	struct strbuf unquoted = STRBUF_INIT;
	strbuf_getline_fn getline_fn;

	getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;
	while (getline_fn(&buf, stdin) != EOF) {
		if (!nul_term_line && buf.buf[0] == '"') {
			FUNC6(&unquoted);
			if (FUNC8(&unquoted, buf.buf, NULL))
				FUNC1("line is badly quoted");
			FUNC7(&buf, &unquoted);
		}
		FUNC0(prefix, check, collect_all, buf.buf);
		FUNC2(stdout, "attribute to stdout");
	}
	FUNC5(&buf);
	FUNC5(&unquoted);
}
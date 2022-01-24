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
struct strbuf {char const* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct pretty_print_context {int /*<<< orphan*/  abbrev; TYPE_1__ date_mode; int /*<<< orphan*/  member_0; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_NORMAL ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct commit const*,char const*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char,int) ; 
 char* FUNC3 (char const*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,size_t) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(const struct commit *commit,
			 const char *src, size_t len,
			 struct strbuf *buf)
{
	char *to_free = NULL;
	struct strbuf fmt = STRBUF_INIT;
	struct pretty_print_context ctx = {0};
	ctx.date_mode.type = DATE_NORMAL;
	ctx.abbrev = DEFAULT_ABBREV;

	if (src == buf->buf)
		to_free = FUNC5(buf, NULL);
	for (;;) {
		const char *b, *c;

		b = FUNC3(src, len, "$Format:", 8);
		if (!b)
			break;
		c = FUNC2(b + 8, '$', (src + len) - b - 8);
		if (!c)
			break;

		FUNC7(&fmt);
		FUNC4(&fmt, b + 8, c - b - 8);

		FUNC4(buf, src, b - src);
		FUNC0(commit, fmt.buf, buf, &ctx);
		len -= c + 1 - src;
		src  = c + 1;
	}
	FUNC4(buf, src, len);
	FUNC6(&fmt);
	FUNC1(to_free);
}
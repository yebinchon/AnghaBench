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
struct strbuf {char const* buf; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*,char const**) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (struct strbuf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static int FUNC9(FILE *out, FILE *in, int keep_cr)
{
	struct strbuf sb = STRBUF_INIT;
	int subject_printed = 0;

	while (!FUNC6(&sb, in)) {
		const char *str;

		if (FUNC4(sb.buf))
			continue;
		else if (FUNC2(sb.buf, "Author:", &str))
			FUNC0(out, "From:%s\n", str);
		else if (FUNC3(sb.buf, "From") || FUNC3(sb.buf, "Date"))
			FUNC0(out, "%s\n", sb.buf);
		else if (!subject_printed) {
			FUNC0(out, "Subject: %s\n", sb.buf);
			subject_printed = 1;
		} else {
			FUNC0(out, "\n%s\n", sb.buf);
			break;
		}
	}

	FUNC8(&sb);
	while (FUNC5(&sb, 8192, in) > 0) {
		FUNC1(sb.buf, 1, sb.len, out);
		FUNC8(&sb);
	}

	FUNC7(&sb);
	return 0;
}
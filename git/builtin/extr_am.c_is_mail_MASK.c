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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  SEEK_SET ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static int FUNC9(FILE *fp)
{
	const char *header_regex = "^[!-9;-~]+:";
	struct strbuf sb = STRBUF_INIT;
	regex_t regex;
	int ret = 1;

	if (FUNC3(fp, 0L, SEEK_SET))
		FUNC2(FUNC0("fseek failed"));

	if (FUNC4(&regex, header_regex, REG_NOSUB | REG_EXTENDED))
		FUNC1("invalid pattern: %s", header_regex);

	while (!FUNC7(&sb, fp)) {
		if (!sb.len)
			break; /* End of header */

		/* Ignore indented folded lines */
		if (*sb.buf == '\t' || *sb.buf == ' ')
			continue;

		/* It's a header if it matches header_regex */
		if (FUNC5(&regex, sb.buf, 0, NULL, 0)) {
			ret = 0;
			goto done;
		}
	}

done:
	FUNC6(&regex);
	FUNC8(&sb);
	return ret;
}
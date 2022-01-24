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
typedef  int /*<<< orphan*/  timestamp_t ;
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFC2822 ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char**,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,char const**) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (struct strbuf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 long FUNC14 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC15(FILE *out, FILE *in, int keep_cr)
{
	struct strbuf sb = STRBUF_INIT;
	int rc = 0;

	while (!FUNC11(&sb, in)) {
		const char *str;

		if (FUNC8(sb.buf, "# User ", &str))
			FUNC3(out, "From: %s\n", str);
		else if (FUNC8(sb.buf, "# Date ", &str)) {
			timestamp_t timestamp;
			long tz, tz2;
			char *end;

			errno = 0;
			timestamp = FUNC6(str, &end, 10);
			if (errno) {
				rc = FUNC2(FUNC1("invalid timestamp"));
				goto exit;
			}

			if (!FUNC8(end, " ", &str)) {
				rc = FUNC2(FUNC1("invalid Date line"));
				goto exit;
			}

			errno = 0;
			tz = FUNC14(str, &end, 10);
			if (errno) {
				rc = FUNC2(FUNC1("invalid timezone offset"));
				goto exit;
			}

			if (*end) {
				rc = FUNC2(FUNC1("invalid Date line"));
				goto exit;
			}

			/*
			 * mercurial's timezone is in seconds west of UTC,
			 * however git's timezone is in hours + minutes east of
			 * UTC. Convert it.
			 */
			tz2 = FUNC5(tz) / 3600 * 100 + FUNC5(tz) % 3600 / 60;
			if (tz > 0)
				tz2 = -tz2;

			FUNC3(out, "Date: %s\n", FUNC7(timestamp, tz2, FUNC0(RFC2822)));
		} else if (FUNC9(sb.buf, "# ")) {
			continue;
		} else {
			FUNC3(out, "\n%s\n", sb.buf);
			break;
		}
	}

	FUNC13(&sb);
	while (FUNC10(&sb, 8192, in) > 0) {
		FUNC4(sb.buf, 1, sb.len, out);
		FUNC13(&sb);
	}
exit:
	FUNC12(&sb);
	return rc;
}
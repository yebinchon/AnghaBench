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
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(void)
{
	char *tmp = FUNC1("TMPDIR");

	/* on Windows it is TMP and TEMP */
	if (!tmp) {
		if (!(tmp = FUNC1("TMP")))
			tmp = FUNC1("TEMP");
		if (tmp) {
			FUNC3("TMPDIR", tmp, 1);
			tmp = FUNC1("TMPDIR");
		}
	}

	if (tmp) {
		/*
		 * Convert all dir separators to forward slashes,
		 * to help shell commands called from the Git
		 * executable (by not mistaking the dir separators
		 * for escape characters).
		 */
		FUNC0(tmp);
	}

	/* simulate TERM to enable auto-color (see color.c) */
	if (!FUNC1("TERM"))
		FUNC3("TERM", "cygwin", 1);

	/* calculate HOME if not set */
	if (!FUNC1("HOME")) {
		/*
		 * try $HOMEDRIVE$HOMEPATH - the home share may be a network
		 * location, thus also check if the path exists (i.e. is not
		 * disconnected)
		 */
		if ((tmp = FUNC1("HOMEDRIVE"))) {
			struct strbuf buf = STRBUF_INIT;
			FUNC4(&buf, tmp);
			if ((tmp = FUNC1("HOMEPATH"))) {
				FUNC4(&buf, tmp);
				if (FUNC2(buf.buf))
					FUNC3("HOME", buf.buf, 1);
				else
					tmp = NULL; /* use $USERPROFILE */
			}
			FUNC5(&buf);
		}
		/* use $USERPROFILE if the home share is not available */
		if (!tmp && (tmp = FUNC1("USERPROFILE")))
			FUNC3("HOME", tmp, 1);
	}
}
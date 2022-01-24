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
struct oidname {int dummy; } ;
struct oid {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (char*,size_t,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct oid*,char*) ; 
 scalar_t__ FUNC9 (struct oid*,struct oid*) ; 
 int /*<<< orphan*/  FUNC10 (struct oid*) ; 
 scalar_t__ FUNC11 (struct oid*,struct oid*) ; 
 int /*<<< orphan*/  FUNC12 (struct oid*,struct oidname*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct oidname*) ; 
 int /*<<< orphan*/ * FUNC14 (char**,size_t*) ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,size_t) ; 

int
FUNC19(int argc, char *argv[])
{
	struct oidname on;
	char *http_buf;
	FILE *fp;
	size_t http_buflen;
	int ch;
	bool gzip_mode, http_mode, print_descriptions;

	/* Parse command line flags. */
	gzip_mode = http_mode = print_descriptions = false;
	while ((ch = FUNC6(argc, argv, "dgh")) != -1) {
		switch (ch) {
		case 'd':
			print_descriptions = true;
			break;
		case 'g':
			gzip_mode = true;
			break;
		case 'h':
			http_mode = true;
			break;
		default:
			FUNC17();
		}
	}
	argc -= optind;
	argv += optind;

	/* HTTP output: cache metrics in buffer. */
	if (http_mode) {
		fp = FUNC14(&http_buf, &http_buflen);
		if (fp == NULL)
			FUNC2(1, "open_memstream");
	} else {
		fp = stdout;
	}

	FUNC13(&on);
	if (argc == 0) {
		struct oid o;

		/* Print all OIDs. */
		FUNC10(&o);
		do {
			FUNC12(&o, &on, print_descriptions, fp);
		} while (FUNC9(&o, &o));
	} else {
		int i;

		/* Print only trees provided as arguments. */
		for (i = 0; i < argc; ++i) {
			struct oid o, root;

			FUNC8(&root, argv[i]);
			o = root;
			do {
				FUNC12(&o, &on, print_descriptions, fp);
			} while (FUNC9(&o, &o) &&
			    FUNC11(&o, &root));
		}
	}

	if (http_mode) {
		const char *content_encoding = "";

		if (FUNC4(fp) || FUNC3(fp) != 0)
			FUNC2(1, "Cannot generate output");

		/* Gzip compress the output. */
		if (gzip_mode) {
			char *buf;
			size_t buflen;

			buflen = http_buflen;
			buf = FUNC7(buflen);
			if (buf == NULL)
				FUNC2(1, "Cannot allocate compression buffer");
			if (FUNC0(http_buf, http_buflen, buf, &buflen)) {
				content_encoding = "Content-Encoding: gzip\r\n";
				FUNC5(http_buf);
				http_buf = buf;
				http_buflen = buflen;
			} else {
				FUNC5(buf);
			}
		}

		/* Print HTTP header and metrics. */
		FUNC1(STDOUT_FILENO,
		    "HTTP/1.1 200 OK\r\n"
		    "Connection: close\r\n"
		    "%s"
		    "Content-Length: %zu\r\n"
		    "Content-Type: text/plain; version=0.0.4\r\n"
		    "\r\n",
		    content_encoding, http_buflen);
		FUNC18(STDOUT_FILENO, http_buf, http_buflen);
		FUNC5(http_buf);

		/* Drain output. */
		if (FUNC16(STDIN_FILENO, SHUT_WR) == 0) {
			char buf[1024];

			while (FUNC15(STDIN_FILENO, buf, sizeof(buf)) > 0) {
			}
		}
	}
	return (0);
}